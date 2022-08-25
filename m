Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FF35A190C
	for <lists+v9fs-developer@lfdr.de>; Thu, 25 Aug 2022 20:49:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oRHvF-0000yr-A2;
	Thu, 25 Aug 2022 18:49:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sales@nkemails.com>) id 1oRHvD-0000yk-Vh
 for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Aug 2022 18:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vj9r8OIdiS+a2rfdZQ3bJ7KbmNXaTjfRSW3vwFqpIUk=; b=bwVCYHGRKjiUUZX7pparTOCbDJ
 B0nc/NMHQh4V7/LHrb2ZYauyubluXbYyuG10j/5MBPJpBaOyaUfT0n1dZ3HpmSjJoyfJZSQE1NO5H
 vXRbidG6M9Nr784M5JikHzGteBqN9/pGmywhPzmFRyyqMkTXiucvwN+arjx06mSy2VjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=vj9r8OIdiS+a2rfdZQ3bJ7KbmNXaTjfRSW3vwFqpIUk=; b=Dh10CEGLBYRq
 kzJYOxgDYBA92lkXDyQe1d3xoFcphes8ivC6ginjNxQAJoArYGwqRLlQCzR56F2GhJlw2my1sFs2u
 y4Jc9H3d/Ns01FEGi1bgWr/QZYZkdhYRCJ/LfnshxyaVVCpFxYyQA/23gdQaCpmkgapw3mJNY1oO4
 aV50A=;
Received: from na2.mxout.mta4.net ([104.243.65.2])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oRHv3-0001DU-Vh for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Aug 2022 18:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=nkemails.com; s=api; c=relaxed/simple;
 t=1661453361; h=from:date:subject:reply-to:to:list-unsubscribe:mime-version;
 bh=vj9r8OIdiS+a2rfdZQ3bJ7KbmNXaTjfRSW3vwFqpIUk=;
 b=SPSSM58d4/XlpZJxwPWLZ1lfKDE6Jg/hmlUEMUTzdRRY4Ucu2Wec4SHEkkwf0X4nc51cVIP+PNh
 hB5IOPQyAfBw6SpoxyA9tFTloVaPXSp37YoRzvyp8BLbYf3Nq6NBrCQoypfo4mGeMc7EKAW1m/Ws8
 LB8YANaF1DdkU3EGAPE=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1661453361;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=vj9r8OIdiS+a2rfdZQ3bJ7KbmNXaTjfRSW3vwFqpIUk=;
 b=cs7RLon5a8t4iR0X4VtQVHW3/LyOPRZma6aLvQPMDwgNEtFKgRtlsUtQ0qDS9DlfaoOiAEJxKfD
 cPK69wM0uG590ZYgFWQQVQR8lDt8tJ1uRlHH0YlganmRmnpl313PnT1rbn4ur+J/f+WTSr5BKvRJ7
 pq1glTwAeEwsVvUFPLk=
From: Lisa Yu <sales@nkemails.com>
Date: Thu, 25 Aug 2022 18:49:21 +0000
Message-Id: <4uhpo2ffwdkn.dvRW4D6bzdTcIbTFOZlM7Q2@tracking.nkemails.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: dvRW4D6bzdTcIbTFOZlM7Q2
MIME-Version: 1.0
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear manager, I am Lisa from XinBo Precision Co.,
 Ltd in China, 
 thank you for taking the time to read this email I writing for you. Since
 2011, we have been providing high-precision CNC parts machinin [...] 
 Content analysis details:   (3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.7 HTML_IMAGE_ONLY_20     BODY: HTML: images with 1600-2000 bytes of
 words
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: elasticemail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.243.65.2 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.243.65.2 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oRHv3-0001DU-Vh
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] High-precision CNC parts respond quickly
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
Reply-To: Lisa Yu <lisa@cncprecision-parts.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear manager,
I am Lisa from XinBo Precision Co., Ltd in China, thank you for taking
the time to read this email I writing for you.
Since 2011, we have been providing high-precision CNC parts machining
services for some global brands, such as Canon, Sumitomo, GE, etc.;
Customers are not only satisfied with our CNC machining capabilities
but also amazed by our quick response services. HIGH PRECISION OF
0.005MM; 8 HOURS QUICK QUOTATION PROCESS; SAMPLES ARE AVAILABLE WITHIN
3-10 DAYS; it can shorten your project development time.
If you have drawings of high-precision parts that need to be machined,
welcome to send us for evaluation and quotation. thanks.
Best regards,
Lisa yu
Lisa@cncprecision-parts. cn
Xinbo Precision
Unsubscribe
[/http://tracking.nkemails.com/tracking/unsubscribe?d=xVPVnlNQthZs7q5to0gjwvFAIFx-rojsakHjtvjFoVE8ZT2urwJmDDY1kRE3MCiSMlbmzWedR7fU1w-dPeuVRJSDDlEnHU6haeX_ANsVN6Pv2e-npS1sp3UDm9nc80y94xR4gUTV-ry709G-tpoD_OsMQWVwHuOlv0Wu1ThCipsZnxI2PuL6QnBPBpbOfPUbLUv2vqBYvTkOQ7n7a6g7HRxfwTIAT9mEz8sLWZIfBBMtpwHjJf4MviBiQvM5S4Ri9ryTwlx3cywvSB93mKEVUo1N4ndNFmMCyJ0mXNzCNESlaD-R_3PMQhdb1FdNaycDTuu-r1XMWX8NUfCMJwYbNvvqw7Yqy_Tk7Pb0Fh1K2bSAwJ_moBIVkD1vPqNMdmyRvy0Yyh4o6DhWCrGxUlYcl-TL9CIB-6UAWNDIhuZeioA5lgfGBgZHGMHkj1W5XSMl6CxmHhVnD4C05KiiKyyDAB-Sy1g8h6L7hH2xKs_DCdQObLWPC-zGErXOTK98ETA3pw2]
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
