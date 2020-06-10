package com.wop.facesdk;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.Rect;
import android.media.FaceDetector;

import com.wop.facesdk.model.FaceResult;

import java.util.ArrayList;

/**
 * Copyright (C), 2020 - 2020, NX
 *
 * @ProjectName: Lemon
 * @Description: google 人脸识别
 * @Author: wop
 * @CreateDate: 2020/4/23 11:03 AM
 * @UpdateUser: 更新者：
 * @UpdateDate: 2020/4/23 11:03 AM
 * @UpdateRemark: 更新说明：
 */
public class GoogleFaceUserUtils {
    private static final int MAX_FACE = 2;

    public static int detectFace(Bitmap bitmap) {
        FaceDetector fdet_ = new FaceDetector(bitmap.getWidth(), bitmap.getHeight(), MAX_FACE);
        FaceDetector.Face[] fullResults = new FaceDetector.Face[MAX_FACE];
        fdet_.findFaces(bitmap, fullResults);
        ArrayList<FaceResult> faces_ = new ArrayList<>();
        for (int i = 0; i < MAX_FACE; i++) {
            if (fullResults[i] != null) {
                PointF mid = new PointF();
                fullResults[i].getMidPoint(mid);

                float eyesDis = fullResults[i].eyesDistance();
//                float confidence = fullResults[i].confidence();
//                float pose = fullResults[i].pose(android.media.FaceDetector.Face.EULER_Y);

                Rect rect = new Rect(
                        (int) (mid.x - eyesDis * 1.20f),
                        (int) (mid.y - eyesDis * 0.55f),
                        (int) (mid.x + eyesDis * 1.20f),
                        (int) (mid.y + eyesDis * 1.85f));

                /**
                 * Only detect face size > 100x100
                 */
                if (rect.height() * rect.width() > 100 * 100) {
//                    FaceResult faceResult = new FaceResult();
                    //faceResult.setFace(0, mid, eyesDis, confidence, pose, System.currentTimeMillis());
                    faces_.add(new FaceResult());
                }
            }
        }
        return faces_.size();
    }

}
