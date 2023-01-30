Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 615346808CF
	for <lists+v9fs-developer@lfdr.de>; Mon, 30 Jan 2023 10:24:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMQOo-0005jD-JM;
	Mon, 30 Jan 2023 09:24:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sales@reko.nremails.com>) id 1pMQOh-0005j2-MC
 for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Jan 2023 09:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pj4Aphtx3re10FoDBTAQXJijUDNCzK05iEDTzamSkUI=; b=m+FUYRABEKKIEWs54PWvYEm0Zy
 vSEIJe1krK4GP2hVj6xwu7XwklRRsZK/+Au+Nyoi+TPSFT4HNKolh1EvOsqEDMC8CMufDYiJJRye8
 8SwAjgREM7KGfJ89EWx39GlNtfWmjzH/rLGcpt2mijne9Y42SQbHI2Rk+qS9hHd1pPbA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=pj4Aphtx3re10FoDBTAQXJijUDNCzK05iEDTzamSkUI=; b=fw9by5cm8wEY
 pUV7EfdnEk9rdyHHFCb9YN06jbaYldKJN8XmQkg+OTtPPA/mlvNI6yO5hM13B/Wrb3X9WoWG121wG
 ZLCPt84rJkdDm6q3yhe/38UU+bfNkXsxVTFzk9I0C3xJtJxebYcOkVZBhJwWRhUCDhN7XN0U4q/k+
 6HSkc=;
Received: from m63.mxout.mta4.net ([67.227.85.63])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pMQOS-0003qc-4i for v9fs-developer@lists.sourceforge.net;
 Mon, 30 Jan 2023 09:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=reko.nremails.com; s=api;
 c=relaxed/simple; t=1675070630;
 h=from:date:subject:reply-to:to:list-unsubscribe:mime-version;
 bh=pj4Aphtx3re10FoDBTAQXJijUDNCzK05iEDTzamSkUI=;
 b=iqiX7ofACKBb7ABFiKQHVjSJ3X6xtlepTj0mPNOSEcAj2mTmMLVSofz9Yx7brbtTxhRJVfvvnLy
 WLrmLqIXOQ4b8R9aBl5yTWX0FXomnaL8/kijF4swqpVSJONiTZm7d+v6Fpv0WGSe+jbxbZ6hfzHGc
 QKZtWTPF/Ly2m8Y6ptY=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1675070630;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=pj4Aphtx3re10FoDBTAQXJijUDNCzK05iEDTzamSkUI=;
 b=ky+hCyUIzhgMF/9T7fk2FSF2EJ+QzptIHCvuCbUKbUSQNWckvoz8jxHzedv+wfZGK0vpvtU6htA
 8/Ov9+AI9ymF5jcDWt4EHU/jdqcozobX4+gFY/BNMHHoWMyIJ4od7S1wiOxIIigfCtli75ceQm4Zt
 EIKLH3EauUy94ppSJ/c=
From: Sugar <sales@reko.nremails.com>
Date: Mon, 30 Jan 2023 09:23:50 +0000
Message-Id: <4uj1xraltms2.JRJDZD9Z6iUu4yv4RQY2xQ2@tracking.reko.nremails.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: JRJDZD9Z6iUu4yv4RQY2xQ2
MIME-Version: 1.0
X-Spam-Score: 5.4 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear manager,
 Happy Chinese New Year! I'm Sugar. It's my great
 honor to write this email to you. We will be your best choice if you are
 looking for CNC machining services. REKO Technology is a profess [...] 
 Content analysis details:   (5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.227.85.63 listed in list.dnswl.org]
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: xcwms.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.227.85.63 listed in wl.mailspike.net]
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: elasticemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 HTML_IMAGE_ONLY_20     BODY: HTML: images with 1600-2000 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
X-Headers-End: 1pMQOS-0003qc-4i
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] The Right Precision CNC Machining Provider
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Sugar <sales@rekocnc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear manager,
Happy Chinese New Year!
I'm Sugar. It's my great honor to write this email to you.
We will be your best choice if you are looking for CNC machining
services.
REKO Technology is a professional CNC processing Chinese factory
focusing on parts processing for 14 years. We can process your
drawings accurately and provide solutions according to your needs. We
always adhere to quick response quotations, precisely processing
parts, strict control of quality, and customer service first. We have
always been proud of helping customers produce perfect parts.
Could you send us the drawings? We look forward to serving you.
Best regards,
Sugar Su
sales@rekocnc.com
REKO CNC
Unsubscribe
[/http://tracking.reko.nremails.com/tracking/unsubscribe?d=SUfZSQjh8bC1ntzWDzUolBEYZnqwFkAusZiwXcfWwJbZIA5J0GPWF7TI8p-_nNod83JGid8L-YPcS3laz67IE7HlXVeYsb7IPpf4wRCjpKvRyTXEj5gBmsZyhA0w6MsJey9ROQI-QMPfUSfaV8qw_xFvsIvKSBjJl1oimGAtUVJpcdJD4a2uyI6klVA0HHDAdapF59OdJ5b7oFFtGV3Jw-zfrXC7-ncwlueYWDUSLAv3NYCoQJSoxXUVkmcicGcuVxMj_P6UglaAHklwPvFcB-nFNLiWUON5ql0OOkxa-p6qhZ0H_adK0ZsCbR_Vw5hcZHSka65bc1IxJ-w6DWgsbpkFbMCGLTA9EVJcBJHxV04yXD-VbJlZ_rhr_9ubLFnqyxESiYKs59ftTZJEdvV4aGFQwUTwa4uFD28pXJQWoB03QW_1B1bvBuS2fWvb9jklrbyQMVwqEhfszwJb6ZcrfZlZDA2evdFgRFaVhO3cYANEOIYM_XS9jWlEkepqfP1lWA2]
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
