Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 611F95FE52C
	for <lists+v9fs-developer@lfdr.de>; Fri, 14 Oct 2022 00:20:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oj6Yh-0003Tj-DU;
	Thu, 13 Oct 2022 22:20:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <palmer@rivosinc.com>) id 1oj6Yf-0003TY-Cw
 for v9fs-developer@lists.sourceforge.net;
 Thu, 13 Oct 2022 22:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:From:Cc:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+leHWNtrvZcbEhJ9w8JfEw5NmGRLYTx/QcgKDf+LIgc=; b=QiNUtazjR9NKpc2ukyTT+OQSd2
 azOziGUO6EiWNicfY1dQVSH85TI1Chu61FmAiFh7eVn/MSGeQjCbbUZa/e791AA/gaefJruHW0pCB
 GB7UyNbSpgO/TnhM+sKiYPgf4cR4ad+R8haCAvCXXzX1NubfZsmtRQxWH5x2HB/qA6UU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:From:Cc:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+leHWNtrvZcbEhJ9w8JfEw5NmGRLYTx/QcgKDf+LIgc=; b=A
 VqBwkukMo3K0pKfbZsgESjZHKkCzm/nyMz4nssgx0K+cemyt2kMnZ355PGxcetcpTdh3wSV9fYXBy
 zbENl1M9x1E0jc/H1x9rdbj8NSIhfLVJAwifpBO0f3xIia2hhG2UURMakymK9KvOOhf36usfvqwLu
 jNuM3+US+6vSmZe8=;
Received: from mail-io1-f52.google.com ([209.85.166.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oj6Yc-00009f-Ug for v9fs-developer@lists.sourceforge.net;
 Thu, 13 Oct 2022 22:20:05 +0000
Received: by mail-io1-f52.google.com with SMTP id y80so2564906iof.3
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 13 Oct 2022 15:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
 h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
 :subject:from:to:cc:subject:date:message-id:reply-to;
 bh=+leHWNtrvZcbEhJ9w8JfEw5NmGRLYTx/QcgKDf+LIgc=;
 b=qinYpPJ86tAD0RVFfk+e9LhVqpbFP8zQYVB7A9nG6BPLgD8OQB6JKlMd1sazxwK1sj
 o1tQgyfD8tWbvHUn7eB0AaJALZoODFJfc1W02AUFc1Y0X/aBkNR8KvKybdH+sMJu/meJ
 cNcAsxObQbx8NlxNn943CF75g6eWghesqitRNKu3HKFyxwQX0AgCFiTEBCgEcg0rrzuS
 ljC5coLvDFdNDCl5DCgVlLQT3pPkwRRpMM497XelQeSA2JuMhnBTOPchVHzE+nVUj+yE
 yAIy9a4rEK9PZKisXUDJmHKYRaXYXU1N8VHz6Pz+JM57KLCzAxZhHzy/9Kw1FV3tlIsc
 LGWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
 :subject:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+leHWNtrvZcbEhJ9w8JfEw5NmGRLYTx/QcgKDf+LIgc=;
 b=ZQCe6zQMeklRwtJeXczEb8verh63n3KxSYuGX+5cp1qZV+dFYHo0S0tF3pDUg83Ghp
 Azmy8i/lJtV5u9/YzHVMdna1F03HTM705k1lfO0x1wpCv8RJ9uHP+dPoQiP2tam41sC6
 ZlZAgVMtbGhGCQj7oczUCqt6II73hO2tm7jwVL7EwD2eDU8IsEFXRvFhS+ZCax94R5Xq
 dWjTfbSX2Hpbzb+hOhb2NwIc7NUSQeje3y6ghjdgcIWxzuQnzuyi71DHDSUtJbELBiRr
 yj8YnZ4Mm2dvpI1aTc8wwNM7ZpLqhzNT7mX4irNuIf7CCq3GdBVvSVlvE5Xmjh8+dwqF
 pgJw==
X-Gm-Message-State: ACrzQf24y5HqOpcSCqmVVooRX1pucnAh6D6ToXopaZvkY789F+yJDumR
 5cAm9o7HHo5QwodOJf/RR4+I90JWs9pc4H2/
X-Google-Smtp-Source: AMsMyM7ek/iLi+GvNvwLRZ8eVYqQRtDBX9hk5HlkuNaSLKqsneVIgBM5GEcnxGV+iX7oj24nh2Qh/w==
X-Received: by 2002:a63:5656:0:b0:446:8eb5:a2c5 with SMTP id
 g22-20020a635656000000b004468eb5a2c5mr1746577pgm.336.1665697768847; 
 Thu, 13 Oct 2022 14:49:28 -0700 (PDT)
Received: from localhost ([50.221.140.188]) by smtp.gmail.com with ESMTPSA id
 d5-20020a170902cec500b00178a8f4d4f2sm319023plg.74.2022.10.13.14.49.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Oct 2022 14:49:28 -0700 (PDT)
Date: Thu, 13 Oct 2022 14:46:40 -0700
Message-Id: <20221013214640.31234-1-palmer@rivosinc.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@rivosinc.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Github deprecated the git:// links about a year ago, so let's
 move to the https:// URLs instead. Reported-by: Conor Dooley
 <conor.dooley@microchip.com>
 Link: https://github.blog/2021-09-01-improving-git-protocol-security-github/
 Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com> --- I've split t [...]
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.52 listed in wl.mailspike.net]
X-Headers-End: 1oj6Yc-00009f-Ug
Subject: [V9fs-developer] [PATCH] MAINTAINERS: git://github ->
 https://github.com for martinetd
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
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@rivosinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Github deprecated the git:// links about a year ago, so let's move to
the https:// URLs instead.

Reported-by: Conor Dooley <conor.dooley@microchip.com>
Link: https://github.blog/2021-09-01-improving-git-protocol-security-github/
Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
---
I've split these up by github username so folks can take them
independently, as some of these repos have been renamed at github and
thus need more than just a sed to fix them.
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8a5012ba6ff9..ef3666ddc73b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -233,7 +233,7 @@ S:	Maintained
 W:	http://swik.net/v9fs
 Q:	http://patchwork.kernel.org/project/v9fs-devel/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
-T:	git git://github.com/martinetd/linux.git
+T:	git https://github.com/martinetd/linux.git
 F:	Documentation/filesystems/9p.rst
 F:	fs/9p/
 F:	include/net/9p/
-- 
2.38.0



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
