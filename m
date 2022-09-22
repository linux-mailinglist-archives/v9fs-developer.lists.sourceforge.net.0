Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F03205E6CFA
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 22:23:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1obSji-0008Sv-43;
	Thu, 22 Sep 2022 20:23:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <floridsleeves@gmail.com>) id 1obSjf-0008So-So
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 20:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rnAvdVu9FLu4hHv77Hq5ubLTsOszBSQGiSlWfmI2aZ4=; b=bapwEVsymdv/+tb8WO3Gp6S9im
 ds6VMLS8iDiS1iwX0d+YP1u212TbU/Lk57+W/AeUJRznte0gC28rTLEO5D4RG+uZy5PEtjd0f0G+7
 gnku98JdfHOcZLY0sCnLBUYVfG/HWqaMIW4GfjMbmoIdbao6urXuBzpMBtZOI8BGvzTc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rnAvdVu9FLu4hHv77Hq5ubLTsOszBSQGiSlWfmI2aZ4=; b=N
 MQtRA5iIOmO9sGnm95hXaMAKJQ/dMTIHAhZB2y/jkAhle0YCsb63YnYqyC6GAOiYC6X/FERzNumuo
 CGu6QtXZMoWN8MmsxVtZNgGsIOokKTNRAxFnOh1j7qiGIc4o2DFkecFmRN9f1F/HnaUdgXIcCa4M7
 2SwIUtM4BcjInVMs=;
Received: from mail-pg1-f179.google.com ([209.85.215.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obSjb-00Gtmj-Ki for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 20:23:51 +0000
Received: by mail-pg1-f179.google.com with SMTP id 78so10257110pgb.13
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 13:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=rnAvdVu9FLu4hHv77Hq5ubLTsOszBSQGiSlWfmI2aZ4=;
 b=kE6za50xvtoastKvMIJRTIGHsR3JNvDBA8AnSVVBZ7+qfsQ0N6KrP1ml7dZm4lvZOD
 UgCW/Y++wX+aihZOGtVFMzSzjba/Ejn0LYEmszKLAsGUfEhqQgfAFh3s22u3LkeTHsSb
 c2yZ2tKofdsPKgUMtyz+t4gPaBWTNJ5GzfkiHwNUYusCetiZHM4nKjWKdAO+PLYey9ls
 1DEyrFIdt8DMkhmz9inif/4VZpby02U+7IbUtKWyjgz7erfuyZEubS3WtmKQGUjcGELe
 pPs4Gc3FeGcoeIcwzZ296e5CZJmPiWjOiWdDVP/QnevGY5xpWMIpbPAQDp5IOoOBQa8g
 0Gqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=rnAvdVu9FLu4hHv77Hq5ubLTsOszBSQGiSlWfmI2aZ4=;
 b=G3q30op3PFKaVZITxrifb76B+nBJF+BHTxGcMyZpdY5l8Ie3pJsSgLpvQwrAD9uEFK
 583P+VOhQcvTCFXesx6Y1ACit8zdnsulJQ8h/2r8MWkuZKKKt8VJSsdxSINVOHT+TBZa
 2hSoogxwGtSFZp8p7casHY/ujYh/jwp5pp+PBhnrkLYH0tphc3aa+ewJqUdbXZ2kkNBD
 83l09HLD62kBgqSVsN5Cn5/lqSP4C+PvuM/od8Kh8u9ynz8DnGhGdtlKBZsa3ITsh6pZ
 t2OYpjc/9O84O1d6/oUgDs/EDsotcl8GWx0chFFey6F1gKnPOpBfH6aV+i11boIX9EJW
 eoAg==
X-Gm-Message-State: ACrzQf0IQwIkt6HjLrWlVhUAtsN/rB7AUtp/KRX+XZQTNDhnragJhC+0
 nj2lmpI20u3QRrKeEaBMlQs=
X-Google-Smtp-Source: AMsMyM4qvEC/Guf3tdC1kRI3dUlyCSiXHylfJP+UC90zfvcOP5hZd/Euh9mdrPmZNB7sPBXE6zDLUw==
X-Received: by 2002:a63:1554:0:b0:43b:f03d:8651 with SMTP id
 20-20020a631554000000b0043bf03d8651mr4411783pgv.422.1663878221879; 
 Thu, 22 Sep 2022 13:23:41 -0700 (PDT)
Received: from localhost.localdomain (lily-optiplex-3070.dynamic.ucsd.edu.
 [2607:f720:1300:3033::1:4dd]) by smtp.googlemail.com with ESMTPSA id
 k18-20020aa79732000000b00545832dd969sm4934312pfg.145.2022.09.22.13.23.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 13:23:41 -0700 (PDT)
From: Li Zhong <floridsleeves@gmail.com>
To: netdev@vger.kernel.org,
	v9fs-developer@lists.sourceforge.net
Date: Thu, 22 Sep 2022 13:23:21 -0700
Message-Id: <20220922202321.1705245-1-floridsleeves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  parse_opts() could fail when there is error parsing mount
 options into p9_fd_opts structure due to allocation failure. In that case
 opts will contain invalid data. Though the value check on opts will [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [floridsleeves[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1obSjb-00Gtmj-Ki
Subject: [V9fs-developer] [PATCH net-next v2] net/9p/trans_fd: check the
 return value of parse_opts
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 edumazet@google.com, Li Zhong <floridsleeves@gmail.com>, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

parse_opts() could fail when there is error parsing mount options into
p9_fd_opts structure due to allocation failure. In that case opts will
contain invalid data. Though the value check on opts will prevent
invalid data from being used, we still add the check and return the
error code to avoid confusions for developers.

Signed-off-by: Li Zhong <floridsleeves@gmail.com>
---
 net/9p/trans_fd.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
index e758978b44be..11ae64c1a24b 100644
--- a/net/9p/trans_fd.c
+++ b/net/9p/trans_fd.c
@@ -1061,7 +1061,9 @@ p9_fd_create(struct p9_client *client, const char *addr, char *args)
 	int err;
 	struct p9_fd_opts opts;
 
-	parse_opts(args, &opts);
+	err = parse_opts(args, &opts);
+	if (err < 0)
+		return err;
 	client->trans_opts.fd.rfd = opts.rfd;
 	client->trans_opts.fd.wfd = opts.wfd;
 
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
