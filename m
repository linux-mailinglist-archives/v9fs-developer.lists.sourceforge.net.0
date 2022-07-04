Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F1F564B3D
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 03:43:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8B74-00061h-GV; Mon, 04 Jul 2022 01:42:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1o8B73-00061b-8o
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 01:42:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GF3HTPtE0daqJydHdURNfVHd7opkifxhxOHGMON+0Mw=; b=KFwmmsYha8LyeUBhuah6yPGka5
 TVSg0XpFeZwD5Bbe8hZWuY4iXz/DC8zb/yTfAWgabTfX8rMzMHBUPXwSe/FhTQmc/w1F645PvrA1u
 ahPmP+nXDuNztMn37CFWQ4g+CFH3yP9FxfWvcr9wNOv/gjhsYbjZeMFd5omG3sROuJLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GF3HTPtE0daqJydHdURNfVHd7opkifxhxOHGMON+0Mw=; b=i7oF7Ojkw/YF/tzDAL9DyEhD4L
 3rDlZhT5/P5uOr7UBcscpk7O99ZvHVnSxPuwBDbc7EjsscP/9WeKtGnSuxQIbqnx5UGt4q0/aW5be
 7jLQEKMtXsIdz0B0k2vi+Z0D7CID+oIkTeSzyo3j9CN7xNBltTyoU3iFces9eKtL33xQ=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8B70-006WaW-5g
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 01:42:55 +0000
Received: by mail-qt1-f171.google.com with SMTP id c13so8093481qtq.10
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 03 Jul 2022 18:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GF3HTPtE0daqJydHdURNfVHd7opkifxhxOHGMON+0Mw=;
 b=UYBnuNLSkQaqrG2mjGaiCiNhkejfKcj83E5EUdt1FEgb83oMMHD60n2Fp+OAeVqbKM
 uLaZ+egYoSRWN0nfWo4BuM4sHmY6Y0WpBMLv9mvYl8sXCG51+Uqjik12W4HRNs9InBFN
 rc9ZWKgwrRFG9B8SV9nN9aT3xTn6PHKMfUpO3C98UkKgUTGP1r+YoKy60+9WThBs4YUi
 ACpqDzvCy2KfRU4uTLgpAAFBQqedsvcqYYdAhqS9EsbzT35Lc+pdyUQSMYhKIUO6S7eJ
 lt1zYRwgdw2sRPRXHUslhjtaxlVEPSoEqGAna2rF4/+LXbiGrPHCxvWV+vDLfI10Eevk
 b9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GF3HTPtE0daqJydHdURNfVHd7opkifxhxOHGMON+0Mw=;
 b=pKirbhRWFeqA66hSWL84ok+O7TJ6jUmnSGDqxS528Tyc6JbZyB1SCSXa16DGq32KW0
 4UuVE+UWEBmQXGiBw8ixyDMLsHiz/n0HF5akKbxKkMvIE7GEnLx7ZNeIX/0n18jCAtq+
 M7An1U+FS7zIjkZkniW+ewURT+VC4yWEYKNDkT7PVOFWfXBDzC6mWqHsulXOJH4F8TT5
 pvwl2/vmn0JeTwzG4PoPiORiB3sJ8DTcyEiVlXHAWeFAv+clSJ2BTitwyXbAs6d/QUGw
 mPbZJk+8oj2rjCcBDgTwtxBX2xTgM2ttAFvSyt6ucGfRfNE+Ca5SVZNlLxyzP0KLMuvO
 gXzw==
X-Gm-Message-State: AJIora/5smnbfaJ+D+oogWeuRMM4zlPjzROa7d1aWlDNGZ66xfpJ9apb
 ML4glvOGlxG4JV9QdZTTGTrLu2wpN/Ut+zM=
X-Google-Smtp-Source: AGRyM1t4cKUHC1TzsSt+4DBE7zDgk8/4zCGdT/I3JIX+gvz4MTrsEnTkMrbFEAyn/s05PCFnvo3Pdg==
X-Received: by 2002:ac8:5a49:0:b0:31e:78fc:1f3 with SMTP id
 o9-20020ac85a49000000b0031e78fc01f3mr1376892qta.90.1656898968330; 
 Sun, 03 Jul 2022 18:42:48 -0700 (PDT)
Received: from localhost (c-73-219-103-14.hsd1.vt.comcast.net. [73.219.103.14])
 by smtp.gmail.com with ESMTPSA id
 x19-20020ac87ed3000000b0031bf4dd8a39sm11112093qtj.56.2022.07.03.18.42.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Jul 2022 18:42:47 -0700 (PDT)
From: Kent Overstreet <kent.overstreet@gmail.com>
To: linux-kernel@vger.kernel.org
Date: Sun,  3 Jul 2022 21:42:41 -0400
Message-Id: <20220704014243.153050-1-kent.overstreet@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220704010945.C230AC341C7@smtp.kernel.org>
References: <20220704010945.C230AC341C7@smtp.kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This series has only been lightly tested, but it seems to
 do the trick... how's it look to you? Commit messages could be better, but
 I'm not familiar with the right 9p terminology for some things. -- >8 -- 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
X-Headers-End: 1o8B70-006WaW-5g
Subject: [V9fs-developer] [PATCH 1/3] 9p: Drop kref usage
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This series has only been lightly tested, but it seems to do the trick... how's
it look to you? Commit messages could be better, but I'm not familiar with the
right 9p terminology for some things.

-- >8 --

An upcoming patch is going to require passing the client through
p9_req_put() -> p9_req_free(), but that's awkward with the kref
indirection - so this patch switches to using refcount_t directly.

Signed-off-by: Kent Overstreet <kent.overstreet@gmail.com>
Cc: Eric Van Hensbergen <ericvh@gmail.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>
Cc: Dominique Martinet <asmadeus@codewreck.org>
---
 include/net/9p/client.h |  6 +++---
 net/9p/client.c         | 19 ++++++++-----------
 2 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/include/net/9p/client.h b/include/net/9p/client.h
index ec1d1706f4..c038c2d73d 100644
--- a/include/net/9p/client.h
+++ b/include/net/9p/client.h
@@ -76,7 +76,7 @@ enum p9_req_status_t {
 struct p9_req_t {
 	int status;
 	int t_err;
-	struct kref refcount;
+	refcount_t refcount;
 	wait_queue_head_t wq;
 	struct p9_fcall tc;
 	struct p9_fcall rc;
@@ -227,12 +227,12 @@ struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag);
 
 static inline void p9_req_get(struct p9_req_t *r)
 {
-	kref_get(&r->refcount);
+	refcount_inc(&r->refcount);
 }
 
 static inline int p9_req_try_get(struct p9_req_t *r)
 {
-	return kref_get_unless_zero(&r->refcount);
+	return refcount_inc_not_zero(&r->refcount);
 }
 
 int p9_req_put(struct p9_req_t *r);
diff --git a/net/9p/client.c b/net/9p/client.c
index 8bba0d9cf9..0ee48e8b72 100644
--- a/net/9p/client.c
+++ b/net/9p/client.c
@@ -305,7 +305,7 @@ p9_tag_alloc(struct p9_client *c, int8_t type, unsigned int max_size)
 	 * callback), so p9_client_cb eats the second ref there
 	 * as the pointer is duplicated directly by virtqueue_add_sgs()
 	 */
-	refcount_set(&req->refcount.refcount, 2);
+	refcount_set(&req->refcount, 2);
 
 	return req;
 
@@ -370,18 +370,15 @@ static int p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
 	return p9_req_put(r);
 }
 
-static void p9_req_free(struct kref *ref)
-{
-	struct p9_req_t *r = container_of(ref, struct p9_req_t, refcount);
-
-	p9_fcall_fini(&r->tc);
-	p9_fcall_fini(&r->rc);
-	kmem_cache_free(p9_req_cache, r);
-}
-
 int p9_req_put(struct p9_req_t *r)
 {
-	return kref_put(&r->refcount, p9_req_free);
+	if (refcount_dec_and_test(&r->refcount)) {
+		p9_fcall_fini(&r->tc);
+		p9_fcall_fini(&r->rc);
+		kmem_cache_free(p9_req_cache, r);
+		return 1;
+	}
+	return 0;
 }
 EXPORT_SYMBOL(p9_req_put);
 
-- 
2.36.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
