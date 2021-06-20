Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FFA3ADDF2
	for <lists+v9fs-developer@lfdr.de>; Sun, 20 Jun 2021 12:20:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1luuZJ-0003y7-T2; Sun, 20 Jun 2021 10:20:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <support@der-waeschekorb.de>) id 1luuZI-0003xz-8d
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Jun 2021 10:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tl6JrmZca5qdauad2p4fbTlY/mD8S1B1eIbibYltexo=; b=WSsBkiPy3amH4OqBYnY4XZCaAo
 AY91Dk1beSsbChFXjfLqz0grco54VWLMEJ+hecbE0QjMaInwCFwOh1PgsKQZUsOQ/r3kurl9VRh2L
 iiASpkTio4c3v5eBfxbSFexuBKJM3ywoyZWtbV1JLm3zz1LtGK8u4JBo9os39EfvvXgI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Reply-To:
 From:Date:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Tl6JrmZca5qdauad2p4fbTlY/mD8S1B1eIbibYltexo=; b=G
 +qnvE4t7p41Mc9agoEVFMBXcmX0q5vLzqhYleVC+MC6r68M19guwuPgZdSyd9RgTxT7akd/DB17+7
 TSOPyX1m17eMXrfaz2AFCan9lKMLtT3ZcrjRZo3D1ec0CQLeERccFbWo1GAolfAG/fDD5vsUYcT/s
 5uDaiVSFEXAE8f8Y=;
Received: from emita.mittwald.de ([188.94.250.251])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1luuZG-000GZd-H3
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Jun 2021 10:20:48 +0000
Received: from ovm7272 (ovm7272.internal [172.16.50.186])
 by emita.mittwald.de (Postfix) with ESMTP id 3938DE1AB5
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 20 Jun 2021 12:20:36 +0200 (CEST)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 1913838:m.php
Date: Sun, 20 Jun 2021 12:20:36 +0200
From: Advert Unit <support@der-waeschekorb.de>
Message-ID: <2d44a966147ed4dce5ed5a3fdc70b3b9@der-waeschekorb.de>
MIME-Version: 1.0
X-Sender: p388270
X-Spam-Level: ***
X-Rspamd-Queue-Id: 3938DE1AB5
X-Spamd-Result: default: False [3.65 / 9.00]; ARC_NA(0.00)[];
 HAS_REPLYTO(0.00)[surestrt@gmail.com]; FROM_HAS_DN(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; HAS_X_POS(0.00)[];
 REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
 FREEMAIL_REPLYTO(1.00)[gmail.com];
 MIME_GOOD(-0.10)[text/plain]; RCPT_COUNT_ONE(0.00)[1];
 TO_DN_NONE(0.00)[]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 R_MIXED_CHARSET(0.25)[]; MID_RHS_MATCH_FROM(0.00)[];
 X_PHPOS_FAKE(2.50)[]
X-Rspamd-Server: rspamd-emita
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [188.94.250.251 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1luuZG-000GZd-H3
Subject: [V9fs-developer] Darlehensangebot..... jetzt bewerben1
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
Reply-To: surestrt@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

QnJhdWNoZW4gU2llIGVpbmVuIEludmVzdG9yPwpTaWUgYmVuw7Z0aWdlbiBlaW4gR2VzY2jDpGZ0
cy0gb2RlciBQcml2YXRkYXJsZWhlbj8KTcO2Y2h0ZW4gU2llIElociBVbnRlcm5laG1lbiByZWZp
bmFuemllcmVuPwpGw7xyIHdlaXRlcmUgSW5mb3JtYXRpb25lbiBrb250YWt0aWVyZW4gU2llIHVu
cyBwZXIgRS1NYWlsOiBzdXJlc3RydEBnbWFpbC5jb20KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
