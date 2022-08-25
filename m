Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5925A0A2A
	for <lists+v9fs-developer@lfdr.de>; Thu, 25 Aug 2022 09:26:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oR7Fu-0004iF-MO;
	Thu, 25 Aug 2022 07:26:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cgel.zte@gmail.com>) id 1oR7Ft-0004i9-HE
 for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Aug 2022 07:26:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bB+kl0UO6V9N3NFWsUEUpn1LfY2EWq3USxIajhWcPWE=; b=DQO9+U91podzqV40nc4kaa0YoK
 eQDkOUDB+rHcydVBrR9kE0eLqtN9/v9tnnNzFcPUdx5k3EIQmAnbbcUw/F6nX/oHQMmkUV6zSgEj2
 /SXd1Va/cPh2QfszgtKwrrucQBDFB05vTztn7ifx1XJSWzS10JxUEH0SGs3jcFY7OtjY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bB+kl0UO6V9N3NFWsUEUpn1LfY2EWq3USxIajhWcPWE=; b=d
 Q9inQ6papX8XGx6+idwz7/3Q8XQjrLEV4Al8xU43s5nO5q9IBdVXrsflMshnLUCoycSZ2lud7YaWm
 sZ/JuucicpauEh3JK7/UMfnqjc42Gfm/odcXderVmG3x5G1LbNrUt1LqnwEOfo8Xk0SvdLfi6kayI
 dlJfZZFOnhA1rOCg=;
Received: from mail-pf1-f170.google.com ([209.85.210.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oR7Fp-00H5Fn-6g for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Aug 2022 07:26:21 +0000
Received: by mail-pf1-f170.google.com with SMTP id x26so1616855pfo.8
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 25 Aug 2022 00:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc;
 bh=bB+kl0UO6V9N3NFWsUEUpn1LfY2EWq3USxIajhWcPWE=;
 b=k6+RcAStH3GaJraz+IAKrP++kdlO6WprMeuJkv+OG49ShppS2aIwXW6I7NgXkH2LAj
 tnwiZCOIiGWssLCiZHihtoQK0A0f2lDCADat84vYJqfhfd1FMluTTLZz+qcY0BkvWZcg
 dbt1nD6U2YWcp/4lGYSn/p1/njsaerLf1niHBP/qhttameyfdmtMOjOzQ2AGZsMdIWbd
 wavlQU0U7V36nb1QdQj5v9dNeC1aVxk7vhrUIZoac5nuoAj6HNWqkisSl10DFuUR55gw
 TLvQ7sNA4HORqyJctGCjliECsV5mR96KCL/cD4mSbhz7n1Bivrmgi1xcY+ZlsHAjvBlg
 H89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc;
 bh=bB+kl0UO6V9N3NFWsUEUpn1LfY2EWq3USxIajhWcPWE=;
 b=H8m3M+gKEe66n29Zxalwfss+YmOPAt0OI0v+NM1vGaioFR5fedi8dn7lUxZiHxymtm
 z2ev52V2ziR7BeNKajI+Bf/ggoMXzon732HttIIu7aNKH3LMb6ZLpfcekWTZYYNlhbOp
 5HnIO3+3Es20I8hMXVj1TUcHMQr46P+/o4yuaur8daV6IRGoU9Zjldl7Gl6uElc10YXj
 aRSoR6QXQsnjx3B8hnVw58y3H08PHvVftzzOOBjr4tVea6ahlKBGaC9M21fU9+82IkOg
 8jQYH+EK9cwqx2/FkCji2ecvsY0+tgnU4YLQMRYcS1Qowtt2TfeCl5orexLCGjqhZig1
 BdoQ==
X-Gm-Message-State: ACgBeo3nWyTl/s5mxTXm8a49GXr+T7w67QIETkiAZqZrBB3YLX+LdIGu
 OgEf0bwSIOTmjTblG+//6In4nwZQtYI=
X-Google-Smtp-Source: AA6agR62WgWPj66ZHKu/4JE+3BnY1A/vfqxFlKaGUeioeZTT4Q376fwszuRwx3PxjNEXGrWkqEWVsg==
X-Received: by 2002:a63:f0e:0:b0:429:54d7:238 with SMTP id
 e14-20020a630f0e000000b0042954d70238mr2190257pgl.620.1661412371701; 
 Thu, 25 Aug 2022 00:26:11 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 1-20020a620501000000b0052d481032a7sm14284630pff.26.2022.08.25.00.26.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Aug 2022 00:26:11 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: ye.xingchen@zte.com.cn
To: asmadeus@codewreck.org
Date: Thu, 25 Aug 2022 07:26:07 +0000
Message-Id: <20220825072607.229093-1-ye.xingchen@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: ye xingchen Return the value v9fs_vfs_mkspecial()
 directly
 instead of storing it in another redundant variable. Reported-by: Zeal Robot
 Signed-off-by: ye xingchen --- fs/9p/vfs_inode.c | 4 +--- 1 file changed,
 1 insertion(+), 3 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cgel.zte[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.170 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oR7Fp-00H5Fn-6g
Subject: [V9fs-developer] [PATCH linux-next] 9p: Remove the unneeded result
 variable
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
Cc: lucho@ionkov.net, ericvh@gmail.com, ye xingchen <ye.xingchen@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: ye xingchen <ye.xingchen@zte.com.cn>

Return the value v9fs_vfs_mkspecial() directly instead of storing it in
another redundant variable.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
---
 fs/9p/vfs_inode.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
index 4d1a4a8d9277..d939b32da201 100644
--- a/fs/9p/vfs_inode.c
+++ b/fs/9p/vfs_inode.c
@@ -1370,7 +1370,6 @@ v9fs_vfs_mknod(struct user_namespace *mnt_userns, struct inode *dir,
 	       struct dentry *dentry, umode_t mode, dev_t rdev)
 {
 	struct v9fs_session_info *v9ses = v9fs_inode2v9ses(dir);
-	int retval;
 	char name[2 + U32_MAX_DIGITS + 1 + U32_MAX_DIGITS + 1];
 	u32 perm;
 
@@ -1387,9 +1386,8 @@ v9fs_vfs_mknod(struct user_namespace *mnt_userns, struct inode *dir,
 		*name = 0;
 
 	perm = unixmode2p9mode(v9ses, mode);
-	retval = v9fs_vfs_mkspecial(dir, dentry, perm, name);
 
-	return retval;
+	return v9fs_vfs_mkspecial(dir, dentry, perm, name);
 }
 
 int v9fs_refresh_inode(struct p9_fid *fid, struct inode *inode)
-- 
2.25.1


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
