Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3139D1F69
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Nov 2024 05:46:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tDG7u-0007j2-38;
	Tue, 19 Nov 2024 04:46:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <notificacionaudiencia123@b2h1v3.abogadorodriguezyasociados.com>)
 id 1tDG7s-0007im-GV for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Nov 2024 04:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:List-Unsubscribe:Content-Type:MIME-Version:
 Message-ID:Reply-To:From:Subject:To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vc/Lt5RFZSFVlAjQOeetonkNYh3tlOtP5cfXec611Bs=; b=Zq8BSPQ4zlRu4coJHuhnFYH+CD
 lL/Fs5pcCUANgpKo4uKq3VC/YIFQV5iyxFWAfbOfX2TfkB8rB7mk87MKtuaYRs+CsblqXLzdAATPH
 4Ym0NahoPQKGnDs0lpWYiWuPIyHqctdoBJqfa3arZ5i49rbz28bsmLlzSZTI88akit4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:List-Unsubscribe:Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=vc/Lt5RFZSFVlAjQOeetonkNYh3tlOtP5cfXec611Bs=; b=kbkYgcN1iFiV
 X6wRkmcXlpkss5rg8rBSMnNN4dTFlsOD6vHPto6Bw5MQKBQ2Jv2U6XK5bO/ZTtqm9/wPnHWKAqvcu
 A+xY1vckxGPtMFYTjxhTqZAxY8u18a+YIIcIncFYcPS5gMd1YR9ddhLEYKHnqX7qzIOe4F0+qYC38
 1vBZA=;
Received: from vps-e85d9432.vps.ovh.net ([51.255.171.112]
 helo=b2h1v3.abogadorodriguezyasociados.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tDG7o-0007CA-Hd for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Nov 2024 04:46:08 +0000
Received: by b2h1v3.abogadorodriguezyasociados.com (Postfix, from userid 33)
 id C6500802AF; Tue, 19 Nov 2024 04:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=b2h1v3.abogadorodriguezyasociados.com; s=mail; t=1731990792;
 bh=vc/Lt5RFZSFVlAjQOeetonkNYh3tlOtP5cfXec611Bs=;
 h=To:Subject:From:Reply-To:List-Unsubscribe:Date:From;
 b=W63fUrV9cSjiHB6Om5vLL7GIycNsIg7q9SMBYvyxuMu3KWmvCgEMaMqMvPMPohf3r
 tseJnUckaum6e+9l5hCJoSrJW/mLgYArQoaVV0KF8gTfRulKQrFh/rtpE4fISjyX03
 ajBVhqD9ZA8IvhVNNe3coD9DiLJRDekJ0qiwMWZPMgZdel+StNZ8OV1kLIp5OfbuEu
 QbkiDTyyYrukXjfOtRshThgf9o3MOQjCu/0g1zJh7df7VRSCM0CtFHLjZF50sh8xNu
 V4oH9gZ9AJB5a8xcWHY+FbpEJrHljM9rNKhXf+203sByYBLgMiwjwhKmjEBFMVxqxK
 hs+s6JWFz2PPQ==
To: v9fs-developer@lists.sourceforge.net
From: Dra Franco SECLO TNBQAFAZ
 <notificacionaudiencia123@b2h1v3.abogadorodriguezyasociados.com>
Message-ID: <20241119013312.0A0D0A9EDD@b2h1v3.abogadorodriguezyasociados.com>
X-Mailer: Microsoft Office Outlook, Build 17.551210
MIME-Version: 1.0
Date: Tue, 19 Nov 2024 04:33:12 +0000 (UTC)
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Celano & Asociados Abogados
 TNBQAFAZLFSOMOU9C7WJJ7WRgxmVRP302.514, 75TNBQAFAZLFSOMOU9C7WJJ7WRgxmVRP302.514,
 75TNBQAFAZLFSOMOU9C7WJJ7WRgxmVRP302.514, 75
 Estimado/a v9fs-developer@lists.sourceforge.net Fe [...] 
 Content analysis details:   (6.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: abogadorodriguezyasociados.com]
 1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
 blocklist [URIs: abogadorodriguezyasociados.com]
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: abogadorodriguezyasociados.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [51.255.171.112 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [51.255.171.112 listed in bl.score.senderscore.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.6 FORGED_OUTLOOK_TAGS    Outlook can't send HTML in this format
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 HTML_TEXT_INVISIBLE_FONT HTML hidden text - word obfuscation?
X-Headers-End: 1tDG7o-0007CA-Hd
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Recordatorio: Documento 278522 para Revision
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
Reply-To: fiscaliageneral@b2h1v3.abogadorodriguezyasociados.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgogICAgQ2VsYW5vICYgQXNvY2lhZG9zIEFib2dhZG9zCVROQlFBRkFaTEZTT01PVTlDN1dKSjdX
Umd4bVZSUDMwMi41MTQsNzVUTkJRQUZBWkxGU09NT1U5QzdXSko3V1JneG1WUlAzMDIuNTE0LDc1
VE5CUUFGQVpMRlNPTU9VOUM3V0pKN1dSZ3htVlJQMzAyLjUxNCw3NQogICAgRXN0aW1hZG8vYSB2
OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKICAgIEZlY2hhOiAxOS8xMS8yMDI0
CglFbCBtb250byBkZSBsYSBjYXVzYSBoYSBzaWRvIGVzdGltYWRvIGVuOiAkMzAyLjUxNCw3NS4K
ICAgIE5vcyBkaXJpZ2ltb3MgYSB1c3RlZCBwYXJhIGluZm9ybWFybGUgc29icmUgdW4gcmVjbGFt
byBsYWJvcmFsIGVuIGVsIHF1ZSBzZSBsZSBzb2xpY2l0YSBjb21wYXJlY2VyIGNvbW8gcmVwcmVz
ZW50YW50ZSBsZWdhbCBlbiB1bmEgYXVkaWVuY2lhIGRlIGNvbmNpbGlhY2nDs24gb2JsaWdhdG9y
aWEgZGlzcHVlc3RhIHBvciBlbCBTaXN0ZW1hIGRlIENvbmNpbGlhY2nDs24gTGFib3JhbCBPYmxp
Z2F0b3JpYSAoU0VDTE8pLCBzZWfDum4gbG8gZXN0YWJsZWNpZG8gcG9yIGxhIExleSBOwrAgMjQu
NjM1LgogICAgRWwgbW9udG8gZW4gZGlzcHV0YSBoYSBzaWRvIGVzdGltYWRvLiBMb3MgZGV0YWxs
ZXMgY29tcGxldG9zIGRlbCBjYXNvIGVzdMOhbiBkaXNwb25pYmxlcyBlbiBlbCBlbmxhY2UgYSBj
b250aW51YWNpw7NuOgogICAgCiAgICAgICAgQWNjZWRhIGEgbG9zIGRldGFsbGVzIGRlIGxhIGF1
ZGllbmNpYQoJCVROQlFBRkFaTEZTT01PVTlDN1dKSjdXUmd4bVZSUDMwMi41MTQsNzVUTkJRQUZB
WkxGU09NT1U5QzdXSko3V1JneG1WUlAzMDIuNTE0LDc1VE5CUUFGQVpMRlNPTU9VOUM3V0pKN1dS
Z3htVlJQMzAyLjUxNCw3NQogICAgCglUTkJRQUZBWkxGU09NT1U5QzdXSko3V1JneG1WUlAzMDIu
NTE0LDc1VE5CUUFGQVpMRlNPTU9VOUM3V0pKN1dSZ3htVlJQMzAyLjUxNCw3NVROQlFBRkFaTEZT
T01PVTlDN1dKSjdXUmd4bVZSUDMwMi41MTQsNzUKICAgIFJlY3VlcmRlIGxsZXZhciB0b2RhIGxh
IGRvY3VtZW50YWNpw7NuIHNvbGljaXRhZGEgcGFyYSBlc3RhIGluc3RhbmNpYS4gTGEgYXVzZW5j
aWEgaW5qdXN0aWZpY2FkYSBwb2Ryw61hIGdlbmVyYXIgc2FuY2lvbmVzIGxlZ2FsZXMgeSBhZmVj
dGFyIGVsIGRlc2Fycm9sbG8gZGVsIGNhc28uCiAgICBRdWVkYW1vcyBhIHN1IGRpc3Bvc2ljacOz
biBwYXJhIGN1YWxxdWllciBjb25zdWx0YSBhZGljaW9uYWwuCglUTkJRQUZBWkxGU09NT1U5QzdX
Sko3V1JneG1WUlAzMDIuNTE0LDc1VE5CUUFGQVpMRlNPTU9VOUM3V0pKN1dSZ3htVlJQMzAyLjUx
NCw3NVROQlFBRkFaTEZTT01PVTlDN1dKSjdXUmd4bVZSUDMwMi41MTQsNzUKICAgIEF0ZW50YW1l
bnRlLAogICAgCiAgICAgICAgCiAgICAgICAgICAgIENlbGFubyAmIEFzb2NpYWRvcyBBYm9nYWRv
cwogICAgICAgICAgICBBdi4gQ29ycmllbnRlcyA5MDgsIFBpc28gNSwgQnVlbm9zIEFpcmVzLCBB
cmdlbnRpbmEJIAogICAgICAgICAgICBUZWzDqWZvbm86ICs1NCAoMTEpIDQtMTIzLTg1NjMKCQkJ
VE5CUUFGQVpMRlNPTU9VOUM3V0pKN1dSZ3htVlJQMzAyLjUxNCw3NVROQlFBRkFaTEZTT01PVTlD
N1dKSjdXUmd4bVZSUDMwMi41MTQsNzVUTkJRQUZBWkxGU09NT1U5QzdXSko3V1JneG1WUlAzMDIu
NTE0LDc1CiAgICAgICAgCiAgICAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
