Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2284B41E3A1
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Oct 2021 00:05:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mW4Be-0006qB-Ig; Thu, 30 Sep 2021 22:05:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sohaib.amhmd@gmail.com>) id 1mW4BM-0006om-OO
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Sep 2021 22:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VqyS6h3FznDu8EubeURpzw4zm7MTy7+ReY+kVhlyTcA=; b=Zc6RlcEWsTURhwll+PUBLVqgHy
 C5SWl0Q90iuLMvXnEUpK7WJfOVJnQ7xBZdCcHXAvRC8qIAPpVH93sSrHrf/cavGUviPZoeSWhLEAx
 rKCoKiv8GIEcDvWiBdvWif0wIBQGSbbcgfvpDkr0HBV65Gz0hdclMe8BInjXciE8Y1pI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VqyS6h3FznDu8EubeURpzw4zm7MTy7+ReY+kVhlyTcA=; b=I
 ODt8fprlGmDsIyNj5TihIBYw2jkJk6Di9NvrvC88NWRG4wkWxLVTD3ufI4uoVdqrP9O46pZkKctow
 4OKL3CoXLGu0ZjegbyGtIWOp/tmrAlXvfvNcwZj9yHnwGg3z8BRExG0JKJZegYFyMdeY7gR3+reS2
 18jY077DnDlNjPn4=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mW4BH-00EcB3-NR
 for v9fs-developer@lists.sourceforge.net; Thu, 30 Sep 2021 22:05:36 +0000
Received: by mail-wr1-f47.google.com with SMTP id s21so12360902wra.7
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Sep 2021 15:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VqyS6h3FznDu8EubeURpzw4zm7MTy7+ReY+kVhlyTcA=;
 b=pnI+PVEGQz2zK1u7J+TOVlSECjcfROF2iiIFvTOUQjLOwLVcos+1w6mT2e2zTB+50X
 lQYyRp/xsSanwklXdm/G+BZYDMHdSehTZ3ofy96+6z9wnhj7xgEP9iGuFU96BCRakLxE
 tpnumu17f43BnK2vwjohiKZ1QaDzi++/3y5NwVq1FcmNUPvYo9nXthhV0f191NDYFKry
 //VhHdpcKoy66gRuD84lCf22fXw2af/G8KkrIcDOWCPaT4lNixXiZLtpRk8Jy+j7n3eI
 ng71ciRQ3EjVMnCUbNve/3TXi5DcsK6toPFW/re+NEcrZo/J9585HvNpRAoRggTxhm54
 KMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VqyS6h3FznDu8EubeURpzw4zm7MTy7+ReY+kVhlyTcA=;
 b=EXoK6PfsH764yAoSlFGYXFXuKD8S9Uf3K6oBmT+GzIhR0U2xLNW1wic1VlO0CfJpQN
 yfMTyIG678zc3SeoksnPPL0D/V6cvofx2D99usES2zvZ+4YcT8yEWtpNFFwwKd/HTAAd
 SafkeP9nHe9Sy3Ve5hhGPDuUQZlLFZvUNKDAuR+qlnsj7SGLNtj5zcYprrMaKVz7k23g
 +mk8thZeiNx47B/9i0yBGpcoJD4WxC8W4zc7PlTyfPvG0S4adWW3gu2IgWbGVgDvO2eG
 4A+Dxq+60snCvzGtS/ZvhMluGd5V+XRaE8770Tle+0EE1hnqGaKcD89IipQjSOPFKG7B
 yWPw==
X-Gm-Message-State: AOAM531VRTj1kVy1qD5DBMCNtHauA21s24dFWSI/hEe0hEpMlcqAYbVA
 w//LpXLfRj0hNNSkrBVcy9s=
X-Google-Smtp-Source: ABdhPJx0OsfTQ+kN2qu1o5Iis6HqP17LZrgbVXo0dS+HRHEVJ6XQYka7ARZKmMuhaNDAyPZ1hyH4og==
X-Received: by 2002:adf:e509:: with SMTP id j9mr8915985wrm.416.1633039525220; 
 Thu, 30 Sep 2021 15:05:25 -0700 (PDT)
Received: from localhost.localdomain ([197.49.49.194])
 by smtp.googlemail.com with ESMTPSA id z17sm4133149wrr.49.2021.09.30.15.05.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 15:05:24 -0700 (PDT)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: 
Date: Fri,  1 Oct 2021 00:04:20 +0200
Message-Id: <20210930220420.44150-1-sohaib.amhmd@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Warning found by checkpatch.pl Signed-off-by: Sohaib Mohamed
 --- fs/9p/fid.c | 3 ++- 1 file changed, 2 insertions(+), 1 deletion(-) diff
 --git a/fs/9p/fid.c b/fs/9p/fid.c index 9d9de62592be..0fd2d0d059c5 100644
 --- a/fs/9p/fid.c +++ b/fs/9p/fid.c @@ -103,6 +103,7 @@ static struct p9_fid
 *v9fs_fid_find(struct dentry *dentry, kuid_t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.47 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sohaib.amhmd[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: checkpatch.pl]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
X-Headers-End: 1mW4BH-00EcB3-NR
Subject: [V9fs-developer] [PATCH] fs/9p: fix indentation and Add missing a
 blank line after declaration
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Warning found by checkpatch.pl

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 fs/9p/fid.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/9p/fid.c b/fs/9p/fid.c
index 9d9de62592be..0fd2d0d059c5 100644
--- a/fs/9p/fid.c
+++ b/fs/9p/fid.c
@@ -103,6 +103,7 @@ static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
 	/* we'll recheck under lock if there's anything to look in */
 	if (!ret && dentry->d_fsdata) {
 		struct hlist_head *h = (struct hlist_head *)&dentry->d_fsdata;
+
 		spin_lock(&dentry->d_lock);
 		hlist_for_each_entry(fid, h, dlist) {
 			if (any || uid_eq(fid->uid, uid)) {
@@ -185,7 +186,7 @@ static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
 			return ERR_PTR(-EPERM);
 
 		if (v9fs_proto_dotu(v9ses) || v9fs_proto_dotl(v9ses))
-				uname = NULL;
+			uname = NULL;
 		else
 			uname = v9ses->uname;
 
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
