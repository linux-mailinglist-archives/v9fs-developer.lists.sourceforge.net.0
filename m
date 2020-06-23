Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C9120493C
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Jun 2020 07:30:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jnbVa-000307-C3; Tue, 23 Jun 2020 05:30:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <karen@pei.com>) id 1jnbVY-0002zt-W1
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Jun 2020 05:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+hw0Q4mt7nzHsBgUyzOpvhLr9PY/aUz5r8zl18W93qg=; b=OxDhu7icah/ajo4XXEFBPZDbvL
 XNd98XueQNM99BrolTyW8HdfmZXuUjWa5HrGeqkPxCvbGoaW7VvZJ0TmGqQjOXpLU0Gg7cGgwwIo0
 eRGuxcS0PL4aEwdMUA7bWYBXvBBR2uhdvktSQXmb7cdrQ0oh2eFhNoH4R/T2/oSPZukU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+hw0Q4mt7nzHsBgUyzOpvhLr9PY/aUz5r8zl18W93qg=; b=d
 4K3snoLkVsOpzof5nv9iH5/Tuh7FwHD3FQ0fOEwBu5OFK+Ec98RcK+7muN6J0cujWrqzHbl2p4OWZ
 /wX5aKVpIGrVFld/iv4Lvuz2bGcqx3tvKtDH1E5EW0QcWsgCan67sMBffP814MZ3U/KBusRNSpRdm
 2pZ/1+hOHMaPODpc=;
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.2) id 1jnbVW-00Ccsw-3a
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Jun 2020 05:30:08 +0000
Received: from DESKTOP-Q5JCF6G ([193.253.199.87]) by mwinf5d62 with ME
 id uVTS220061teA6x03VVu0K; Tue, 23 Jun 2020 07:29:57 +0200
X-ME-Helo: DESKTOP-Q5JCF6G
X-ME-Date: Tue, 23 Jun 2020 07:29:57 +0200
X-ME-IP: 193.253.199.87
From: "Ms Karen Ngui" <karen@pei.com>
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Mon, 22 Jun 2020 22:29:56 -0700
Message-Id: <2252202006292216E5B78069$F865A554BB@DESKTOPQJCFG>
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [193.253.199.87 listed in psbl.surriel.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.127 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.127 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (invoicekgnuii05[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1jnbVW-00Ccsw-3a
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] To ~~~ v9fs-developer@lists.sourceforge.net
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
Reply-To: invoicekgnuii05@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Kindly confirm if you got my business collaboration In-mail sent to you via LinkedIn.

Thanks. Mrs. Ngui

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
