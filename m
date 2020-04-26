Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 426401B8AE9
	for <lists+v9fs-developer@lfdr.de>; Sun, 26 Apr 2020 03:53:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jSWTh-0000YI-49; Sun, 26 Apr 2020 01:53:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vejeta@gmail.com>) id 1jSWTf-0000YB-TT
 for v9fs-developer@lists.sourceforge.net; Sun, 26 Apr 2020 01:53:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/NJAbZ6lLwzseu4mh9ugN078hNbVoCxwgPvpWD8teZQ=; b=iX1dpcRR7mgUjRUsNO54ymarIf
 dvehi1Waxv4rbfs0GuKkr5zBuaWaig845zvxyon63+z/iR+sGn+xugJX9dUEKsylbVhi+ohTUKRs2
 fQ/Yxam1ImJEX52l4k4AZ2MccaPVpHEQjOJNZ9wOphM3B2WxrCyp13Pup6SH5xll6r8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:To
 :From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/NJAbZ6lLwzseu4mh9ugN078hNbVoCxwgPvpWD8teZQ=; b=N
 MtY66hPHpjB66vQscJBucjGwfTR2+Kp5vQ2hxnoTYige0erqgYkn62GmQ8WHgKu6VSmRgnjMhV+Ao
 5KJwJ+l1exYcDzWLENVcOSuKTaSPFdxhjWwMrRp+qoFWdpGnjvrOGIBE9mrphEiBUPjfetdHRD30l
 TgtEt9ywFF2/i8/Y=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jSWTc-00ElYH-Dz
 for v9fs-developer@lists.sourceforge.net; Sun, 26 Apr 2020 01:53:03 +0000
Received: by mail-wr1-f66.google.com with SMTP id k13so16277346wrw.7
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 25 Apr 2020 18:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding;
 bh=/NJAbZ6lLwzseu4mh9ugN078hNbVoCxwgPvpWD8teZQ=;
 b=lSUC4ROCm19t4oQO0nwA4EOsVYo1JDj9UkF/HtbSqyidk1d/i5ObXATW1H+HUGJ/DU
 i/1I0Qpe+C/IQnmDJsl/T9aWZF1Nt6xIloQco/EqJ537jFAzMCUae3GsRu/dpTEK1qgU
 TeUAdhV6Al0czfD3V0g4K2eEeOV3X8ItA1Zp6IeqtkIH2jpDTxElCxu9d1/oG5HH0diJ
 yAqiKfOEMM8TfRz9HQvzL0ON6Jj8FtVjHR6rysQ4wViIl2qj+za48TQa8eH2XrLLjcA8
 BFkbfy+JnaHS0JVRsrXY28iu8PZUnoZsh/wML+npeNkllw+mMSa4tvrtOrxbJeWF0oh1
 mTfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding;
 bh=/NJAbZ6lLwzseu4mh9ugN078hNbVoCxwgPvpWD8teZQ=;
 b=N2EJpjogK2vHS//0ELxNby0wa2w78MZ8pdvIajU3ldsRL5cbe/sdnOt9EPNQh54Eao
 sw5zFxD6vwmSrLoOMCpsf0nCl+gmorAkcn/H5ISVmRTG1+V8YDXQhK1RnCyP/ZDbjFiE
 07EeOwMYNHooq6r2pJpZjz1d4+70DZgJYIPwA6t9thfp+kipw50nNwIP7ANHiogL5RLf
 goXVoGV5YY7XhFesshPqg3wmZ5qHi/sx0kPmBgo3tM+Rs7O7xyXqwE3ziU0RfgPv3A5k
 PvdwjZbd5eomInYYcDCQPS+dmd21hwQ1z8revkWWZimeTAhe+0l1xP6JIGNBo1GkCCnm
 p3GA==
X-Gm-Message-State: AGi0PuYdHO28ljdm9FHTTuZHgpaBFhmZ9TxXm18RxNIHhv0Tai4FqdjX
 3yjIR4KkSQYy0HEtVT7U6o9fVTFCr1PvCw==
X-Google-Smtp-Source: APiQypJMAVpgqfFppEa61HaKzquerhhTqjNJk8hwgIHu4NeYoFeeNsl8YKVG8/htMFeGI+87Y+Ii1A==
X-Received: by 2002:adf:fad0:: with SMTP id a16mr21644097wrs.149.1587865973865; 
 Sat, 25 Apr 2020 18:52:53 -0700 (PDT)
Received: from camelot (33.red-83-52-26.dynamicip.rima-tde.net. [83.52.26.33])
 by smtp.gmail.com with ESMTPSA id
 l15sm9180548wmi.48.2020.04.25.18.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 18:52:53 -0700 (PDT)
Date: Sun, 26 Apr 2020 03:52:50 +0200
From: Juan Manuel =?iso-8859-1?Q?M=E9ndez?= Rey <vejeta@gmail.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 corbet@lwn.net, v9fs-developer@lists.sourceforge.net,
 linux-doc@vger.kernel.org
Message-ID: <20200426015250.GA35090@camelot>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (vejeta[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jSWTc-00ElYH-Dz
Subject: [V9fs-developer] [PATCH] Update the documentation referencing Plan
 9 from User Space.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The page originally referenced to checkout Plan9 application and libraries
have been missing for quite some time and the development is carried out
in github and documented on this new site.

Signed-off-by: Juan Manuel M=E9ndez Rey <vejeta@gmail.com>
---
 Documentation/filesystems/9p.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/filesystems/9p.rst b/Documentation/filesystems/9=
p.rst
index 671fef39a802..2995279ddc24 100644
--- a/Documentation/filesystems/9p.rst
+++ b/Documentation/filesystems/9p.rst
@@ -192,4 +192,4 @@ For more information on the Plan 9 Operating System che=
ck out
 http://plan9.bell-labs.com/plan9
 =

 For information on Plan 9 from User Space (Plan 9 applications and librari=
es
-ported to Linux/BSD/OSX/etc) check out http://swtch.com/plan9
+ported to Linux/BSD/OSX/etc) check out https://9fans.github.io/plan9port/
-- =

2.26.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
