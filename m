Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C29662EFB52
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jan 2021 23:47:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ky0Xr-0006QJ-1e; Fri, 08 Jan 2021 22:47:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rikard.falkeborn@gmail.com>) id 1ky0Xp-0006QA-IK
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jan 2021 22:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hJXk2BAUmcofcz+CyBJ2mq6BwSyyharKDCKpISJ6XtA=; b=cm5n7L1Jx9cggmRxTm7KTrzAEr
 t0iJo1AYb1YzmVb44Z7JuXVkhqN9kuk/PLH4931hqpnFjWtpKbcdAroV1i6eyWccRtZgOuAZplYYM
 4UTn4xSwB+qLhg1xgYSLJGnkkQwMZt0kVpC8vASgjX3xhZ7QN7tLFqqgIWQSe1aFG3F8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hJXk2BAUmcofcz+CyBJ2mq6BwSyyharKDCKpISJ6XtA=; b=Q
 FkzYIjjSpdnzKY5VNpv/WooB3/YF23WUgzVNsHfCR/k/TekQEqZgHylrycFQ3wg/ve3vc60GMZXdy
 4DxTF3MH2XkTUFS3OhdVMbaEFR+h4FfkT1bnv2kVQR9hpePP21Oj2sRWxMqtKeECBByFK2U9D2N2e
 lwKn/9qq8B3lGntg=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ky0Xc-00BnXh-11
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jan 2021 22:47:45 +0000
Received: by mail-lf1-f44.google.com with SMTP id l11so26798289lfg.0
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 08 Jan 2021 14:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJXk2BAUmcofcz+CyBJ2mq6BwSyyharKDCKpISJ6XtA=;
 b=BeTCSAMaRIarLvsejN987GvITBD7YrUfLFch1IA1k9G3IaMZXO1H8Ohcx1mcQNjgkd
 NPjevGSSZ/fF27Ww7rkFqQ0mSVa+RPUk1XnEBRZjl9Fgq0V8W7DAfcf3OXkvoQLx3dC1
 xX7p9uP9IRQmG7Wme6lHpbFwhXwkVjr1OiC90E3dT6/MKEo3k2EwToHsIkFFEDYduvZK
 gevKhrzrestqAvmVnl05MbC5N1Sp1oYw3bQV3k8Avs701wyTKO1iR30FVZQj4gT0AmVz
 VNTsAfSQ3KDMR8irqB746zm0wyJW1On24oM1LZIB4A6aLiR/AGSoUy7+eT1ebNcS5p5n
 RRBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hJXk2BAUmcofcz+CyBJ2mq6BwSyyharKDCKpISJ6XtA=;
 b=Xz7+1hKpHDufDlfED9ipJ1IUkTGrjXhYZjSqVIaKquoub/Ma9E7/4LD2FhUhr3CSID
 WW9iZFl5hBAsc2TTCpYyCg21Gx+xnR4t62s+4i9FNbQffHz/n2ZsBYG5cZD5p1Qkpd3o
 +7ADPQDSl9TScZCRY5zzAGtrlJ+loKgUADN/zIJa1Cw+sQokhYtgNNR0ANXF85LdihtQ
 TrUtXDS2rUSvhHLabmGCWuOCq1ugfzqQWyMV2Bu1ZMHEqi3291DQS/YzD/+rPTZApKnQ
 Cc5XZnLQsPRf/+PrXH2sw3/Y/SzivbC/wsCL7Q1Gi6deHA/eF/muVsAunBo7J+eHrBp/
 Kn0A==
X-Gm-Message-State: AOAM533eqzGqLihcOf5f9hDOxPiu7Z0h2TzidwGhz4vvUuYFndwJEE9x
 MWNVlYWSu2ENoROsKyZliY4=
X-Google-Smtp-Source: ABdhPJz8249ScJhwB5+HzWsPxOFqrK4AD4CpygCzAHd/j2U9CxW/AP6TZLPWefoKBzWwvpEp5uvngA==
X-Received: by 2002:a2e:7e05:: with SMTP id z5mr2621568ljc.353.1610146038257; 
 Fri, 08 Jan 2021 14:47:18 -0800 (PST)
Received: from localhost.localdomain (h-98-128-228-148.NA.cust.bahnhof.se.
 [98.128.228.148])
 by smtp.gmail.com with ESMTPSA id n13sm2355960ljj.70.2021.01.08.14.47.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jan 2021 14:47:17 -0800 (PST)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: ric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri,  8 Jan 2021 23:46:50 +0100
Message-Id: <20210108224650.25872-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (rikard.falkeborn[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ky0Xc-00BnXh-11
Subject: [V9fs-developer] [PATCH] 9p: Constify static struct v9fs_attr_group
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
Cc: v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The only usage of v9fs_attr_group is to pass its address to
sysfs_create_group() and sysfs_create_group(), both which takes pointers
to const struct attribute_group. Make it const to allow the compiler to
put it in read-only memory.

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 fs/9p/v9fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index 39def020a074..cdb99507ef33 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -583,7 +583,7 @@ static struct attribute *v9fs_attrs[] = {
 	NULL,
 };
 
-static struct attribute_group v9fs_attr_group = {
+static const struct attribute_group v9fs_attr_group = {
 	.attrs = v9fs_attrs,
 };
 
-- 
2.30.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
