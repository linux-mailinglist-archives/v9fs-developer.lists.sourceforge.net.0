Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8650B1FFB21
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Jun 2020 20:34:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jlzN4-0002gO-Aq; Thu, 18 Jun 2020 18:34:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander.kapshuk@gmail.com>) id 1jlzN3-0002gF-27
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 18:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PyjKf0yQJUn797GKMZ1etLAj+edU1lvwjmQ9JIL+8zE=; b=Cc87+brfzwWe8YqKbMWzgteSW8
 BcrG4uR218VyCowZHuBSNZrSfD02ZfIcbPCegbWEUW2tADFRTCyQI7lYH0QwK53yG7p4JeCdZ3JXq
 RvlN5ivfkzx90uOAqS/z6UGOwcocggOombnGKNkXo0wCbJW6nRnkxvrD55ecWtVTUKV0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PyjKf0yQJUn797GKMZ1etLAj+edU1lvwjmQ9JIL+8zE=; b=I
 xN/XEV2HsNlYwTnmRo8CUbprO2WToUv8FHCU/rKgB/mtYr+XTTTmPSee74kLulooyF5Y9jvpMv4m+
 NIdRPY7dhovm2m0s2IaGNd6S8quF89ofjTzGxBeCOhPbzHl9hQlGyT4+Y7UqCtSJg2qIOt9m8PcCi
 gYX9hgWsWxRE0U7Q=;
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jlzN1-00B2N0-SD
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Jun 2020 18:34:40 +0000
Received: by mail-lj1-f196.google.com with SMTP id y11so8481706ljm.9
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 Jun 2020 11:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PyjKf0yQJUn797GKMZ1etLAj+edU1lvwjmQ9JIL+8zE=;
 b=t1r9DysuY9WR1DlGtMUGZrPyLQF56KrDnKvaUDbOrLHT7TlkMvo3vCkHFZLgj9ptIQ
 B1WGvc0ciZ8KGjnfYXcrpGyzcI1Lsb5hrEyM/StDMRpVCBik0zD1duVENIzW9xd6ggrF
 oYFwXcbQYeQAF46EYYQQDVOxYh6W65mmDgQL+169HYoTZHFteE22udkZBN1WMcBb+4+/
 0Zkrpl3RH4VjxdNRp9V1ukE7hIkT68Jmr97pl9GCyLw0V54MFmsor4kXez7XnQCtqQni
 YnPDTkGuIG/9uw2W9U2vZQ2iboBnMfmh9HUmuJ1+n4pyasorx96SWWaKJFufePWbE9KF
 H6LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PyjKf0yQJUn797GKMZ1etLAj+edU1lvwjmQ9JIL+8zE=;
 b=JgNwfJru9+ncq1h+MADHh8UJ0l6bKes75z/T/WmNytpvdCd1K7gx17zPSY87zmXCxb
 jlKLmDG0giyq81of1WhS+kePfCVZGMe16SW02lmtWYgqF5OjTlQASyv+dyPct3dovh/R
 WCv1df12IVZJgwMhlvKKq85GgH3kui+IRzrWaXA/52yXZ2HQEmSksanobDYueLXS7LcV
 maXUaXn/bhwzDZ9NDqmrcmD0Mup2Repqay+Yo5IYxoj8KBjmCTF+IayBwj3aFBvSjGUN
 jJCyUjJHG86ymYFSEmebWcrNBBpGsMDFbZQ4tfWE+E9ECge6seGGGHS1U/NIO3+KxO7B
 sBsQ==
X-Gm-Message-State: AOAM5330SrUgNZc6xcfPj6mFVQQicKP27K0TTOWF/xU8gLtkL1Ug/0Dv
 qPxFqaCHR48/X2KDcv0vfag=
X-Google-Smtp-Source: ABdhPJwzh+j3cZEie5IfRGMVB2dg3RSJkTKcAFJ/mEM7RixDYruHJh0QHZu8TiDk7/y/NtdyEQdzRA==
X-Received: by 2002:a2e:6a15:: with SMTP id f21mr2910443ljc.455.1592505266039; 
 Thu, 18 Jun 2020 11:34:26 -0700 (PDT)
Received: from pc-sasha.localdomain ([146.120.244.6])
 by smtp.gmail.com with ESMTPSA id w20sm907436lfk.56.2020.06.18.11.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 11:34:25 -0700 (PDT)
From: Alexander Kapshuk <alexander.kapshuk@gmail.com>
To: ericvh@gmail.com,
	lucho@ionkov.net,
	asmadeus@codewreck.org
Date: Thu, 18 Jun 2020 21:34:17 +0300
Message-Id: <20200618183417.5423-1-alexander.kapshuk@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [146.120.244.6 listed in zen.spamhaus.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander.kapshuk[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlzN1-00B2N0-SD
Subject: [V9fs-developer] [PATCH] net/9p: Fix sparse endian warning in
 trans_fd.c
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
Cc: alexander.kapshuk@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Address sparse endian warning:
net/9p/trans_fd.c:932:28: warning: incorrect type in assignment (different base types)
net/9p/trans_fd.c:932:28:    expected restricted __be32 [addressable] [assigned] [usertype] s_addr
net/9p/trans_fd.c:932:28:    got unsigned long

Signed-off-by: Alexander Kapshuk <alexander.kapshuk@gmail.com>
---
 net/9p/trans_fd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index 13cd683a658a..2581f5145a22 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -929,7 +929,7 @@ static int p9_bind_privport(struct socket *sock)

 	memset(&cl, 0, sizeof(cl));
 	cl.sin_family = AF_INET;
-	cl.sin_addr.s_addr = INADDR_ANY;
+	cl.sin_addr.s_addr = htonl(INADDR_ANY);
 	for (port = p9_ipport_resv_max; port >= p9_ipport_resv_min; port--) {
 		cl.sin_port = htons((ushort)port);
 		err = kernel_bind(sock, (struct sockaddr *)&cl, sizeof(cl));
--
2.27.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
