Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E54F341E776
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Oct 2021 08:25:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mWBym-0001UD-8g; Fri, 01 Oct 2021 06:25:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <sohaib.amhmd@gmail.com>) id 1mWByk-0001U6-Ur
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 06:25:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ox0kcF+wR7alSGypm9vvkslmozP56AiJpgAmEJ1vubM=; b=kSu5T8cOFbsEhSUC3DJXQrrNkR
 bUmT+N/U/OOt8KkK9NlQ61NImbuQyEgeQ7BW0TgtxyUzFhHNtmlLrc5TimK/78TQMXpBfaNNpwBqv
 52wfEOL78D3LHqviRB2Kdi4QxcfENBkTvhmR7z3HAu2UhMkq+sHiItzQuspxZMwjzzso=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ox0kcF+wR7alSGypm9vvkslmozP56AiJpgAmEJ1vubM=; b=F
 IEQCLUzfiFKFCWeG4s+n1VpsRz4o+FjtLR7x8r6W0Y1EBa5H+Dv6JrXMMx8REThSHhp4DLQXUGlpu
 RH3qBkecbglVXgYzS+H2NwlOsNdDG2ygtljEJmaoeq2+VVw4x3I1qtdNKw+67rTIAG6xngEocmqzj
 OVOBSbkBSZJino+Q=;
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mWByj-00FH1X-48
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 06:25:06 +0000
Received: by mail-wr1-f49.google.com with SMTP id d6so13646257wrc.11
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Sep 2021 23:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ox0kcF+wR7alSGypm9vvkslmozP56AiJpgAmEJ1vubM=;
 b=lpLDwU+vDA4Z8xsLLM2rXgfAgHfC58jR5b/nUATZYSond+Y/X4WIvAEPoR+SuekoGo
 iRs7/fODp89EdFjECkmzQOu9Dy8gpLH432ocd4fzPWRvbqNI+qVmkchRJICFf+zj/XNs
 JyoJEklHai4Tjt2S5X5pGVpPpcd6bpvVrUazN0tF4j7Laoz0HeIGfG4yoPlewqWHJaeI
 jeFurF/Mub29N5+u7Ch47O1Sh/U5YDWQAyHOXGgqhHHrHe3sagsORQyUB3bALMm9aI8c
 BNuBc+S3oSmm1iLQx4dvGFNHvudbIbi7wrFobmHfTW3nKcCZN2dLG4Bj62NY8QRKH8z4
 OaUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ox0kcF+wR7alSGypm9vvkslmozP56AiJpgAmEJ1vubM=;
 b=EO/20apdf2FsLw1bxKs8S1jJRnu9pmpzgT/gqmBozOvN33IcmR9ZJItMok7CZQBb3H
 tBrvhzB/vfymqC1441WNYvmgSg9o+jawJiVHGV8KfnTd0ldk5JeZidj8MZz9E5L/CtB6
 ZtouEEsEg0rWrC1cNcV/Jq9AljuJ5h1B9NdXWKZFM4dW9rasr9scJKBRk37sfj1mj33S
 Av109VCT5f2jg+qJpox6Wv/75picYCGeeiIi7CCDY4v8854D+PlYROAmAXu0leMZx/JI
 r8DNM4wfkpMvr8x0u4rAuNILWHiam47oXrBBbvoPSMBJ160jjFJ0mrbjE86uV2bdULjQ
 hi9w==
X-Gm-Message-State: AOAM533qV0/oqin+5D4JTQMJauVyPoFN+AZM+rmkGjbqSaCsuHLVF+jg
 pdxUmQo3bjbcGQtwsEUBnT7EU/2xcAleAw==
X-Google-Smtp-Source: ABdhPJyTgIKUdfjL8rfoWlpW1rP4l+OxKv4EVTvDQ2svg6XO09fT+f80UBF5qiDAr2lkZnm+5BRFFw==
X-Received: by 2002:adf:fe89:: with SMTP id l9mr10260591wrr.0.1633069498632;
 Thu, 30 Sep 2021 23:24:58 -0700 (PDT)
Received: from localhost.localdomain ([197.49.49.194])
 by smtp.googlemail.com with ESMTPSA id 15sm6714135wmk.48.2021.09.30.23.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 23:24:58 -0700 (PDT)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: 
Date: Fri,  1 Oct 2021 08:24:54 +0200
Message-Id: <20211001062454.99205-1-sohaib.amhmd@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Error found by checkpatch.pl Signed-off-by: Sohaib Mohamed
 --- fs/9p/v9fs.c | 3 ++- 1 file changed, 2 insertions(+), 1 deletion(-) diff
 --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c index cdb99507ef33..694687effdfe 100644
 --- a/fs/9p/v9fs.c +++ b/fs/9p/v9fs.c @@ -519, 7 +519,
 8 @@ void v9fs_session_close(struct
 v9fs_session_info *v9ses) * ma [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sohaib.amhmd[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: checkpatch.pl]
X-Headers-End: 1mWByj-00FH1X-48
Subject: [V9fs-developer] [PATCH] fs/9p: cleanup: opening brace at the
 beginning of the next line
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

Error found by checkpatch.pl

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 fs/9p/v9fs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
index cdb99507ef33..694687effdfe 100644
--- a/fs/9p/v9fs.c
+++ b/fs/9p/v9fs.c
@@ -519,7 +519,8 @@ void v9fs_session_close(struct v9fs_session_info *v9ses)
  * mark transport as disconnected and cancel all pending requests.
  */
 
-void v9fs_session_cancel(struct v9fs_session_info *v9ses) {
+void v9fs_session_cancel(struct v9fs_session_info *v9ses)
+{
 	p9_debug(P9_DEBUG_ERROR, "cancel session %p\n", v9ses);
 	p9_client_disconnect(v9ses->clnt);
 }
-- 
2.25.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
