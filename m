Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E438C9CD924
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Nov 2024 07:57:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tBqGr-0005cl-M6;
	Fri, 15 Nov 2024 06:57:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <avisodocumento810@d3o1t9.juridicorodriguezyasociados.com>)
 id 1tBqGq-0005ce-V8 for v9fs-developer@lists.sourceforge.net;
 Fri, 15 Nov 2024 06:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:List-Unsubscribe:Content-Type:MIME-Version:
 Message-ID:Reply-To:From:Subject:To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ue9yvPsigLWvW4aP9AuqDNefELCvuv/L5a+5WIkvtYc=; b=SzcaRJuILx/Sc3LOlyj82Z8VFT
 0IbNDitKGY9iD3oja53hH6P3q6msrVLPtiXX506UF+jjeQG+eGRUa0Pj+7XzE+4PYA3ZGEn7vqlAz
 W6RbqGAXZe13Oh5mrbFuCiJFc4RsAh0GUNfAF1qRuMnMq2sHEWl724QZBVRL6CyFWPeI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:List-Unsubscribe:Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Ue9yvPsigLWvW4aP9AuqDNefELCvuv/L5a+5WIkvtYc=; b=kB7Lp7GeNBee
 w25mSQQAyvqauaQq8JA4QElKBQkyG0fFJk8VaGUMes70e8yLsaptqnLJYVm5rsJAmMR7OofASKF/P
 WEXzuGg+7wPtETPajpIvq5mEvBwn74Tof89dO09ARBJczv+Tqeg70WamLzQCPF0o/hS3XS4TwRhf2
 888Zo=;
Received: from vps-9ffb3e52.vps.ovh.net ([54.37.70.139]
 helo=d3o1t9.juridicorodriguezyasociados.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tBqGq-0002Px-4w for v9fs-developer@lists.sourceforge.net;
 Fri, 15 Nov 2024 06:57:32 +0000
Received: by d3o1t9.juridicorodriguezyasociados.com (Postfix, from userid 33)
 id C6B94863CA; Fri, 15 Nov 2024 06:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=d3o1t9.juridicorodriguezyasociados.com; s=mail; t=1731653606;
 bh=Ue9yvPsigLWvW4aP9AuqDNefELCvuv/L5a+5WIkvtYc=;
 h=To:Subject:From:Reply-To:List-Unsubscribe:Date:From;
 b=dDS+WK0aAg1qW8BHGIGX50r8tY4b1J3iddJJlw+2ZNNUFA85Vgj//R+/QQcFyrWFj
 yeFjIvPQHuUft1m1TsYRy5xctCdDe0Il5ea8x/9tsJCLz1o6ikQByjro3c/awdt9/n
 Gx5A1J+M+ShSf0RMvgm8GldJwL2KerjZGsNaGR2dKLyVF8ijBu1sItt2r5keXHgxtp
 Q3hG90el39EkGdkhz7nN/tWhR8oKmQp2+8WQjN8n91fpQ+q3hTVoMZi1lX4VqcpNW6
 AFFH6egUlGWiFJp9CDrJUP/wL1lbKNEHgClE0s7qqX+mQNEWOBTq84ej2cSJVVmEtj
 +cPnUa4qnz+Kw==
To: v9fs-developer@lists.sourceforge.net
From: Rodriguez Asociados Area 268942
 <avisodocumento810@d3o1t9.juridicorodriguezyasociados.com>
Message-ID: <20241115035326.836D92F779@d3o1t9.juridicorodriguezyasociados.com>
X-Mailer: Microsoft Office Outlook, Build 17.551210
MIME-Version: 1.0
Date: Fri, 15 Nov 2024 06:53:26 +0000 (UTC)
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Estudio Jurídico Integral Rodriguez & Asociados GM7EEASPYBUXAKKUS12M470XbfhWOP234.925,13GM7EEASPYBUXAKKUS12M470XbfhWOP234.925,13GM7EEASPYBUXAKKUS12M470XbfhWOP234.925,13GM7EEASPYBUXAKKUS12M470XbfhWOP
    [...] 
 
 Content analysis details:   (6.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: juridicorodriguezyasociados.com]
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: juridicorodriguezyasociados.com]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: juridicorodriguezyasociados.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [54.37.70.139 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [54.37.70.139 listed in bl.score.senderscore.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.6 FORGED_OUTLOOK_TAGS    Outlook can't send HTML in this format
  0.0 LOTS_OF_MONEY          Huge... sums of money
  0.0 HTML_TEXT_INVISIBLE_FONT HTML hidden text - word obfuscation?
X-Headers-End: 1tBqGq-0002Px-4w
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Aviso de Documento 268942 para Revision
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: fiscaliageneral@d3o1t9.juridicorodriguezyasociados.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgogICAgRXN0dWRpbyBKdXLDrWRpY28gSW50ZWdyYWwgUm9kcmlndWV6ICYgQXNvY2lhZG9zCiAg
ICBHTTdFRUFTUFlCVVhBS0tVUzEyTTQ3MFhiZmhXT1AyMzQuOTI1LDEzR003RUVBU1BZQlVYQUtL
VVMxMk00NzBYYmZoV09QMjM0LjkyNSwxM0dNN0VFQVNQWUJVWEFLS1VTMTJNNDcwWGJmaFdPUDIz
NC45MjUsMTNHTTdFRUFTUFlCVVhBS0tVUzEyTTQ3MFhiZmhXT1AyMzQuOTI1LDEzCiAgICBCdWVu
IGTDrWEsIHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCAgCiAgICBGZWNoYTog
MTUvMTEvMjAyNAoJQ29zdG8gaG9ub3JhcmlvcyBsZWdhbGVzOiAkMjM0LjkyNSwxMwogICAgR003
RUVBU1BZQlVYQUtLVVMxMk00NzBYYmZoV09QMjM0LjkyNSwxM0dNN0VFQVNQWUJVWEFLS1VTMTJN
NDcwWGJmaFdPUDIzNC45MjUsMTNHTTdFRUFTUFlCVVhBS0tVUzEyTTQ3MFhiZmhXT1AyMzQuOTI1
LDEzR003RUVBU1BZQlVYQUtLVVMxMk00NzBYYmZoV09QMjM0LjkyNSwxMwogICAgTGUgZW52aWFt
b3MgZWwgYWN1ZXJkbyBxdWUgZGViZSB0ZW5lciBpbXByZXNvIHBhcmEgbGEgYXVkaWVuY2lhLgog
ICAgR003RUVBU1BZQlVYQUtLVVMxMk00NzBYYmZoV09QMjM0LjkyNSwxM0dNN0VFQVNQWUJVWEFL
S1VTMTJNNDcwWGJmaFdPUDIzNC45MjUsMTNHTTdFRUFTUFlCVVhBS0tVUzEyTTQ3MFhiZmhXT1Ay
MzQuOTI1LDEzR003RUVBU1BZQlVYQUtLVVMxMk00NzBYYmZoV09QMjM0LjkyNSwxMwogICAgVW4g
Y29yZGlhbCBzYWx1ZG8sCiAgICAKICAgICAgICBSZXZpc2Ugc3UgRG9jdW1lbnRvIEFxdcOtIChQ
REYgMjY4OTQyMzQ2MzU3KQogICAgCiAgICBHTTdFRUFTUFlCVVhBS0tVUzEyTTQ3MFhiZmhXT1Ay
MzQuOTI1LDEzR003RUVBU1BZQlVYQUtLVVMxMk00NzBYYmZoV09QMjM0LjkyNSwxM0dNN0VFQVNQ
WUJVWEFLS1VTMTJNNDcwWGJmaFdPUDIzNC45MjUsMTNHTTdFRUFTUFlCVVhBS0tVUzEyTTQ3MFhi
ZmhXT1AyMzQuOTI1LDEzCglHTTdFRUFTUFlCVVhBS0tVUzEyTTQ3MFhiZmhXT1AyMzQuOTI1LDEz
R003RUVBU1BZQlVYQUtLVVMxMk00NzBYYmZoV09QMjM0LjkyNSwxM0dNN0VFQVNQWUJVWEFLS1VT
MTJNNDcwWGJmaFdPUDIzNC45MjUsMTMKICAgIAogICAgCiAgICAKICAgICAgICBEcmVzLiBMZXNj
YW5vIC0gUm9kcmlndWV6IC0gR2lhbmlubm8gLSBLYXJsaWtvd3NraSAmIEFzb2NpYWRvcwogICAg
ICAgIEF2ZGEuIFbDqWxleiBTYXJzZmllbGQgOTIyLCBNdW5ybywgUGFydGlkbyBkZSBWaWNlbnRl
IEzDs3BleiwgUHJvdmluY2lhIGRlIEJ1ZW5vcyBBaXJlcy4KICAgICAgICBUZWzDqWZvbm8vRmF4
OiAoMDExKSA0LTgxMC01MTAzCiAgICAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
