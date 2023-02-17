Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 917D469B56E
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Feb 2023 23:22:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pT97H-0005tB-2W;
	Fri, 17 Feb 2023 22:22:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <stephen@networkplumber.org>) id 1pT97G-0005t4-1j
 for v9fs-developer@lists.sourceforge.net;
 Fri, 17 Feb 2023 22:22:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t+6LgbVxSXyUSjaSvWzUU+gBhH2QuafV4gZUM0Hl87s=; b=Wq/QjNfJIp5AGTQCVZZiat4bPb
 T9WkxGmQmdXkg06V2ZdVup1TAL6pykgFXTNlN9WlaVbt+bYBnU3nN/3hPuk8ej8VxQguj3glnFkTN
 UE0Aa8x1LK/rk2mBXzh+Chkon3AH4/rxjPsjcf6N7nuRpiSQtZPIBsQI5TW27K8LDpaA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=t+6LgbVxSXyUSjaSvWzUU+gBhH2QuafV4gZUM0Hl87s=; b=g
 sldFUC/iwvxMturUdoLiF5fHLEFxBK1LYOFLmAlmhOSerbrTWWt+BXBQHJB9lEAnO+Tk1mlXYZhcO
 Hh5jeYDe44HriJDv033fNZiVaN6m2Ggljw1YgeD7nEHmQ6HQex6hNUHbRDb3F1v5Xo8hLHfUkCXt7
 muOmFKiyI5w1zjMc=;
Received: from mail-vs1-f51.google.com ([209.85.217.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pT977-00086d-0T for v9fs-developer@lists.sourceforge.net;
 Fri, 17 Feb 2023 22:22:05 +0000
Received: by mail-vs1-f51.google.com with SMTP id x6so2378196vsp.7
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 17 Feb 2023 14:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=t+6LgbVxSXyUSjaSvWzUU+gBhH2QuafV4gZUM0Hl87s=;
 b=M+xYTBGZttq+2CFiY7iKVy3gouFMaYkka72TmsYU1wwwrWj55R4P1e67i2t+Q6Cq/0
 uDttzbaCFUq8CnFXwHjOSNrxJEHBbDgxLM8tx0wgo1Wtwx5bsntY5HPBCCoVS9tUeNrm
 vthZxguHhsY1xq6OaXRJJm8FLrGD2we7V6VXuVXIxRGatk8rxFvrbNG4OAkcrvct+uuN
 YX69DLM8qsLBMBl/sSYVvX8Tvr9twEwqRhOYgaXRTWWLMGvsC46RghjeJhmoIousHk9f
 jUdgZNE0ZHtAbO/RlwZh1TMu9cC2hepgXlAQKLuz1MU5H1BF12niwAKCDuDndNQZ2icc
 YF0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=t+6LgbVxSXyUSjaSvWzUU+gBhH2QuafV4gZUM0Hl87s=;
 b=svqwrH7sq7XsGVmslN8D+/Vug0CkEha7aj6PXCnmea+Em0OIFeoO0rV9mp86JYeW0y
 Q4HuNTYYezx2QC25oyDr1wAt8ViCiwpGZ+sUHmf6zPg0LUzpTzCszUF4a7kyDBX+BvuM
 wmDFfCnCAEWlLsX2wkOQzQvmFKhMyH02mcenCA/fhEq9bEuGwTUmKs6jw5eHOYEk/rsi
 0F2iXCGR3Ppg6z4HhNWRxwhFf111PbvsPae3w2ivM9VvXXAnmfGUSS1jxykmpvnOvmiI
 WF2HKuBEnT7O0l2dXr85lLVozn9iWfHmKQMM2f65z9IQj4+OmG9wy33P9cQbvmpJgaj+
 iQnw==
X-Gm-Message-State: AO0yUKUAZCEbtuiV0Hqcxi22TdP1xRhcYad4WPx8m5X7eMYERLFq1Pyi
 voxUMmhLLzTB5miXiStIWf9JGWwboIWNG3mRmIA=
X-Google-Smtp-Source: AK7set9vCli0EoNp4nvUgXH7qIi3vqIMtNZ69teg4/aeYUYtlukiPtQzXr2V1mtaMLLU9Q9y+xoFoA==
X-Received: by 2002:a05:6a20:4985:b0:be:ea27:3c16 with SMTP id
 fs5-20020a056a20498500b000beea273c16mr1472587pzb.35.1676668621988; 
 Fri, 17 Feb 2023 13:17:01 -0800 (PST)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 a10-20020a65654a000000b004ff6b744248sm823230pgw.48.2023.02.17.13.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Feb 2023 13:17:01 -0800 (PST)
Date: Fri, 17 Feb 2023 13:16:59 -0800
To: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov
 <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, Christian
 Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <20230217131659.526b4d2e@hermes.local>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Looks like some misconfiguration. Begin forwarded message:
 Date: Fri, 17 Feb 2023 20:17:09 +0000 From: bugzilla-daemon@kernel.org To:
 stephen@networkplumber.org Subject: [Bug 217050] New: module 9P2000: unknown
 symbol (err -2) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pT977-00086d-0T
Subject: [V9fs-developer] Fw: [Bug 217050] New: module 9P2000: unknown
 symbol (err -2)
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
From: Stephen Hemminger via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Cc: v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Looks like some misconfiguration.

Begin forwarded message:

Date: Fri, 17 Feb 2023 20:17:09 +0000
From: bugzilla-daemon@kernel.org
To: stephen@networkplumber.org
Subject: [Bug 217050] New: module 9P2000: unknown symbol (err -2)


https://bugzilla.kernel.org/show_bug.cgi?id=217050

            Bug ID: 217050
           Summary: module 9P2000: unknown symbol (err -2)
           Product: Networking
           Version: 2.5
    Kernel Version: 5.15.85
          Hardware: Intel
                OS: Linux
              Tree: Mainline
            Status: NEW
          Severity: normal
          Priority: P1
         Component: Other
          Assignee: stephen@networkplumber.org
          Reporter: rodin_aa@inbox.ru
        Regression: No

Created attachment 303744
  --> https://bugzilla.kernel.org/attachment.cgi?id=303744&action=edit  
modprobe 9p

9P2000 works OK, if it is build-in kernel.
But as a Module it's not working. Attempt to load module leading to set of
errors (see the attachment).

-- 
You may reply to this email to add a comment.

You are receiving this mail because:
You are the assignee for the bug.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
