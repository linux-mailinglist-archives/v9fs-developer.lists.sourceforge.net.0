Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CF1991FE0
	for <lists+v9fs-developer@lfdr.de>; Sun,  6 Oct 2024 19:23:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sxUz2-0000WG-Ow;
	Sun, 06 Oct 2024 17:23:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <return@ravenculture.com>) id 1sxUz1-0000W8-Pk
 for v9fs-developer@lists.sourceforge.net;
 Sun, 06 Oct 2024 17:23:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:List-Unsubscribe:To:From:
 Subject:Content-Type:Mime-Version:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fx/Nwv0ZEvwk3VpMc1vEGZeBeu2wbBJwIbi4k2P8YIs=; b=X6LlQle1cpXNlrIIqe9qAbUKD7
 pXEYgHU7OOcX4NvmEFNtBUrgKYzXXbds6cKTwmkiSoIcfCUob4Wcz1gS8jPKyLK2/i/RllahJM/yc
 uqgOYHQ17PSEIDUFYqpQW4P5i9aV2cQZBVTswJwLGE24FN1t6FZledZrXcp2am+2rKsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:List-Unsubscribe:To:From:Subject:Content-Type:
 Mime-Version:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Fx/Nwv0ZEvwk3VpMc1vEGZeBeu2wbBJwIbi4k2P8YIs=; b=mqAABKbmnm6kVxcS4FbVG+2Qak
 Dhx/EocjhLqRFVAchzfW0cdbWFjA+Rojdk8M/kamABnUnESzkxzMkHx6kJcT/w9/UtM2UbNjHdnK/
 fTl8b0YhaZ6vzvvxQ+xOsid3IwuygyEh99BaamdTg2RW8Z+1MtzPWF018OECuVBDY/MA=;
Received: from [38.129.16.47] (helo=ravenculture.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1sxUz0-0007KA-TR for v9fs-developer@lists.sourceforge.net;
 Sun, 06 Oct 2024 17:23:51 +0000
X-Spam-Flag: NO
Received-SPF: pass (mail117c60.megamailservers.eu: domain of
 bounce+9314d5.070b6-kaander2=online.no@info.nltg.com designates 141.193.32.27
 as permitted sender) receiver=mail117c60.megamailservers.eu;
 client-ip=141.193.32.27; helo=m32-27.eu.mailgun.net;
 envelope-from=bounce+9314d5.070b6-kaander2=online.no@info.nltg.com;
 x-software=spfmilter 2.001 http://www.acme.com/software/spfmilter/ with
 libspf2-1.2.10; 
DMARC-Filter: OpenDMARC Filter v1.3.2 mail117c60.megamailservers.eu
 4957Wgmc108511
Authentication-Results: mail117c60.megamailservers.eu;
 dmarc=none (p=none dis=none) header.from=info.nltg.com
Authentication-Results: mail117c60.megamailservers.eu; spf=pass
 smtp.mailfrom=bounce+9314d5.070b6-kaander2=online.no@info.nltg.com
X-Envelope-From: bounce+9314d5.070b6-kaander2=online.no@info.nltg.com
Authentication-Results: mail117c60.megamailservers.eu;
 dkim=pass (1024-bit key) header.d=info.nltg.com header.i=@info.nltg.com
 header.b="QQDwQfAV"
Received: from m32-27.eu.mailgun.net (m32-27.eu.mailgun.net [141.193.32.27])
 by mail117c60.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 4957Wgmc108511
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO)
 for <kaander2@online.no>; Sat, 5 Oct 2024 07:33:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=info.nltg.com;
 q=dns/txt; s=mta; t=1728113582; x=1728120782; 
 h=Message-Id: Reply-To: sender: sender: List-Unsubscribe-Post:
 List-Unsubscribe: To: To: From: From: Subject: Subject: Content-Type:
 Mime-Version: Date; 
 bh=m7WuE965LtBKvnssp9j2wGhDn3ZWZN/YgyoMUBOHfds=;
 b=QQDwQfAVKHRVHgQK1ujgRPQBklPhuBupJPfMFbWmChyuWF/eZdJrh/MeXk3dFZfUvYcYiZj0opcAQjkWjMyVOSMAjunE51144u1L8FBdfY1MYpPdOU9mCu1juiYkvbtgx5DYSh6AXke6zQybB6WoA3jrVrQ7Wo74wUwsFcYt3DY=
X-Mailgun-Sending-Ip: 141.193.32.27
X-Mailgun-Sending-Ip-Pool: 
X-Mailgun-Sid: WyI3OTU3YSIsImthYW5kZXIyQG9ubGluZS5ubyIsIjA3MGI2Il0=
Received: by b8fdb574b8dd with HTTP id 6700eb5da564c1216061cda7;
 Sat, 05 Oct 2024 07:31:41 GMT
Date: Sun, 06 Oct 2024 17:16:16 +0000
Mime-Version: 1.0
From: Costco Surprise <ving.no@info.nltg.com>
To: v9fs-developer@lists.sourceforge.net
X-Mailgun-Tag: eu1:22372f70-5bf4-11ec-ac0c-b264d487ae32
X-Mailgun-Tag: b07afc53-43d5-4c47-9156-4dadc2ebcb2e
X-Mailgun-Dkim: true
X-Mailgun-Track: true
X-Mailgun-Track-Clicks: false
X-Mailgun-Track-Opens: false
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Mailgun-Variables: {"Metadata":
 "YTqFgNaCBF16zTMKECI3L3Bb9BHsrAyyZNSHrjISDGYoIoTra-fIWh1EXBoLd2FudHNfZW1haWwyZwoMZv0Jr3dQW50wB09iEhVubC00MDI0LXdrbC1zMjUtY3JldGUYowIiGW5sLTQwMjQtd2tsLWFkdC1zMjUtY3JldGUqGVVrZW5zIHNvbW1lcnRpbGJ1ZDogS3JldGE55rJ21zrA2UE6CGNhbXBhaWduQgxiTsdll3tNhL9TnsM"}
Message-Id: <794528042820241005073141.f640d40cd0395e66@info.nltg.com>
X-VADE-SPAMSTATE: commercial:mce
X-VADE-SPAMSCORE: 17
X-VADE-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeftddrvddvgedguddvudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfjqffuvffqrffktedpgffpggdqveeitdenuceurghilhhouhhtmecufedtudenucdnofetkffnkffpifculddujedmnecujfgurhepffggtgfuhffvjfhsrhfksegrtderredttdejnecuhfhrohhmpeggihhnghcuoehvihhnghdrnhhosehinhhfohdrnhhlthhgrdgtohhmqeenucggtffrrghtthgvrhhnpeeutdfftdduveetvdeuueevveffhedulefgkeelhedvieegkeehueelgfdufeejtdenucffohhmrghinhepvgigphhonhgvrgdrtghomhenucfkphepudeguddrudelfedrfedvrddvjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedugedurdduleefrdefvddrvdejpdhhvghlohepmhefvddqvdejrdgvuhdrmhgrihhlghhunhdrnhgvthdpmhgrihhlfhhrohhmpegsohhunhgtvgdoleefudegugehrddtjedtsgeiqdhkrggrnhguvghrvdepohhnlhhinhgvrdhnohesihhnfhhordhnlhhtghdrtghomhdpnhgspghrtghpthhtohepuddprhgtphhtthhopehkrggrnhguvghrvdesohhnlhhinhgvrdhnoh
X-Rspamd-Status: No, score=0.99
X-Rspamd-Result: default: False [0.99 / 6.00];
 URI_HIDDEN_PATH(1.00)[https://cdn.eu1.exponea.com/ving-no/e/.eJyNj7FLw0AYxUFxiSIlIIgugoLTeUlM2l5A0MkuuqiDiugl96U5m1zL5ZJQ2tH_QMTN0UFw0EkXFURcxFWcBXXxTxCMiiC4OHzw-L3H43v62NHF-eTgMDm5z2pPs293hzfHa-He7svZe-11npU6WyMroVKtxMU4z_OpjIv6lGjiRioYJCAz7gMeD9OYijb6NJFoyjrMYNOq2ijMKOJCgCdBIgk8gTqVVCgOwnw-zR7cq8c5t6T1pImuCciTCJQC6Y4WxNeHRIRsw7JR3ohQYjnIl6DA7S_MWO-DmPLI1bTe1G_qvZQpF2l9cT3lTJ9ghkGnbcdEVZuUiw4IEKlUAuRbjlEmZbMKxF9bxdhrsjZW1IsAq28tsWLfZN0kG3_pb7JubvzArwDj2ddRb9kpxvsV0_CD6cAjVrUbQ-yBTELe2uTM_c9_XSMgwCrEMIoKJwjK2wPe4i3sdxZ2LpcOrj8Ak0aVzA.F1_ZyyPJyAT_PQ/click];
 DMARC_POLICY_ALLOW(-0.50)[nltg.com,none]; MV_CASE(0.50)[];
 FORGED_SENDER(0.30)[ving.no@info.nltg.com,bounce@info.nltg.com];
 R_SPF_ALLOW(-0.20)[+ip4:141.193.32.0/23:c];
 R_DKIM_ALLOW(-0.20)[info.nltg.com:s=mta];
 MANY_INVISIBLE_PARTS(0.10)[2];
 MIME_GOOD(-0.10)[multipart/alternative,text/plain];
 ZERO_FONT(0.10)[1]; HAS_LIST_UNSUB(-0.01)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; RCVD_TLS_LAST(0.00)[];
 FROM_HAS_DN(0.00)[]; RCPT_COUNT_ONE(0.00)[1]; ARC_NA(0.00)[];
 MIME_TRACE(0.00)[0:+,1:+,2:~];
 TAGGED_FROM(0.00)[9314d5.070b6-kaander2=online.no];
 MISSING_XM_UA(0.00)[]; RCVD_COUNT_ONE(0.00)[1];
 REPLYTO_DOM_EQ_FROM_DOM(0.00)[];
 FROM_NEQ_ENVFROM(0.00)[ving.no@info.nltg.com,bounce@info.nltg.com];
 DKIM_TRACE(0.00)[info.nltg.com:+]; TO_DN_NONE(0.00)[];
 ASN(0.00)[asn:16509, ipnet:141.193.32.0/23, country:US];
 MID_RHS_MATCH_FROM(0.00)[];
 HAS_REPLYTO(0.00)[noreply@info.nltg.com]
X-Origin-Country: US
X-Origin-ASN: 16509
X-WHL: LR
X-Spam-Score: 7.1 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  *Sikre deg sommerreisen til Kreta nå* Når du reiser til
   Kreta med Ving kan du velge mellom 16 reisemål og noen av øyas beste hotell.
    Hva med et av våre egne konsepthotell? Sunprime Platanias Beach, Sunwing
    Makrigialos Beach og Ocean B [...] 
 
 Content analysis details:   (7.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [38.129.16.47 listed in zen.spamhaus.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 HTML_TAG_BALANCE_BODY  BODY: HTML has unbalanced "body" tags
  0.0 AC_BR_BONANZA          RAW: Too many newlines in a row... spammy template
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1sxUz0-0007KA-TR
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Final Notice Coming for a YETI Rambler 20-oz.
 Tumbler Reward
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
Reply-To: noreply@info.nltg.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCipTaWtyZSBkZWcgc29tbWVycmVpc2VuIHRpbCBLcmV0YSBuw6UqCgpOw6VyIGR1IHJlaXNl
ciB0aWwgS3JldGEgbWVkIFZpbmcga2FuIGR1IHZlbGdlIG1lbGxvbSAxNiByZWlzZW3DpWwgb2cg
bm9lbiBhdiDDuHlhcyBiZXN0ZSBob3RlbGwuIEh2YSBtZWQgZXQgYXYgdsOlcmUgZWduZSBrb25z
ZXB0aG90ZWxsPyBTdW5wcmltZSBQbGF0YW5pYXMgQmVhY2gsIFN1bndpbmcgTWFrcmlnaWFsb3Mg
QmVhY2ggb2cgT2NlYW4gQmVhY2ggQ2x1YiBmaWtrIGFsbGUgZW4gb3BwZnJpc2tuaW5nIGbDuHIg
c29tbWVyZW4gMjAyNC4gTWVkIGtvZGVuICogS1JFVEEyNSAqZsOlciBkdSAqMS4wMDAs4oCTIGkg
ZWtzdHJhIHJhYmF0dCogcHIuIGJlc3RpbGxpbmcuCgoqQkVTVElMTCBNRUQgUkFCQVRUKiAgCgoq
VkkgQU5CRUZBTEVSKgoKKlZJIEFOQkVGQUxFUioKCgoKKkVneXB0IOKAkyBuw6UgdGlsIGVuIGVu
ZGEgYmVkcmUgcHJpcyoKCkVneXB0IGVyIGV0IHByaXNndW5zdGlnIG9nIHNvbHNpa2tlcnQgcmVp
c2Vtw6VsLCBvZyBBbGwgSW5jbHVzaXZlIGVyIG9mdGUgaW5rbHVkZXJ0LiBOw6UgZsOlciBkdSAq
MS4wMDAs4oCTIGkgZWtzdHJhIHJhYmF0dCogcMOlIHJlaXNlciBkaXQgaSBwZXJpb2RlbiBqYW51
YXLigJNtYXJzLgoKKlNFIFJFSVNFUiBUSUwgRUdZUFQqICAKCgoKKlRpcHMgdGlsIG9wcGxldmVs
c2VyIGkgRWd5cHQqCgpTbm9ya2xpbmcgaSB2ZXJkZW5za2xhc3NlLCBsb2thbGUgc21ha2VyLCBn
b2RlIHNob3BwaW5nbXVsaWdoZXRlciBvZyBoaXN0b3Jpc2tlIHNldmVyZGlnaGV0ZXIg4oCTIEVn
eXB0IGhhciBhbHQuIEhlciBmw6VyIGR1IHBlcnNvbmxpZ2UgdGlwcyBmcmEgcmVpc2Vla3NwZXJ0
IFpha2FyaWFzLgoKKkxFUyBBUlRJS0tFTEVOKiAgCgoKCipJa2tlIGdsZW0gcmFiYXR0ZW4sIGRh
ISoKCkR1IGthbiBmcmVtZGVsZXMgZsOlICoyLjAwMCzigJMgaSBla3N0cmEgcmFiYXR0KiBww6Ug
YWxsZSBjaGFydGVycmVpc2VyIHRpbCBLYW5hcmnDuHllbmUgaSBwZXJpb2RlbiBub3ZlbWJlcuKA
k21hcnMuIFJhYmF0dGtvZGVuICpDQU5BUklBUzI0KiBlciBneWxkaWcgdGlsIHPDuG5kYWcgNi4g
b2t0b2JlciBrbC4gMjMuNTkuCgoqU0UgVElMQlVERVQqICAKCipDb3N0YSBkZWwgU29sIGZyYSA1
LjE5NSzigJMqCgpEZW4gc3BhbnNrZSBzb2xreXN0ZW4gaGFyIG5vZSBmb3IgYWxsZS4gSGVyIGth
biBkdSBzcGlsbGUgZ29sZiDDpXJldCBydW5kdCwgc21ha2UgZGVnIGdqZW5ub20gZGV0IHN0b3Jl
IHV0dmFsZ2V0IGF2IHJlc3RhdXJhbnRlciBvZyB1dGZvcnNrZSBmamVsbGJ5ZXIsIGthdGVkcmFs
ZXIgb2cgbWF1cmlza2Ugc2xvdHQuCgoqRklOTiBESU4gUkVJU0UqICAKCgoKCgoqSG90ZWxsIGZv
ciBzdMO4cnJlIGdydXBwZXIqIAoKSHZhIGVyIGJlZHJlIGVubiBlbiBncnVwcGUtIGVsbGVyIGtv
bmZlcmFuc2VyZWlzZT8gSm8sIGVuIGdydXBwZS0gZWxsZXIga29uZmVyYW5zZXJlaXNlIHRpbCB1
dGxhbmRldCEgVmkgaGplbHBlciBkZWcgbWVkIMOlIGZpbm5lIGRldCBwZXJmZWt0ZSBob3RlbGxl
dCBpIHZhcm1lcmUgc3Ryw7hrLgoKKkxFUyBNRVIqICAKCipIb3RlbGx0aXBzOiBCYWhpYSBQcmlu
Y2lwZSBww6UgVGVuZXJpZmUqCgpVdGZvcnNrIEJhaGlhIFByaW5jaXBlcyB0cmUgZmFudGFzdGlz
a2UgaG90ZWxsIHDDpSBUZW5lcmlmZSwgc29tIGFsbGUgaGFyIGZpbmUgYmFzc2VuZ29tcsOlZGVy
IG9nIG1vcnNvbW1lIGFrdGl2aXRldGVyIGZvciBzdG9yZSBvZyBzbcOlLiBBbGwgSW5jbHVzaXZl
IGVsbGVyIGhhbHZwZW5zam9uIGVyIGlua2x1ZGVydCBpIHByaXNlbi4KCipTRSBIT1RFTEwqICAK
CgoKCgoqUmVpc2VyIG1lZCBvbXRhbmtlKgoKVsOlciAKYsOmcmVrcmFmdHN0cmF0ZWdpLgpMZXMg
bWVyIMK7IAoKCgoqQWxsdGlkCnJlaXNlZ2FyYW50aSoKClBha2tlcmVpc2VyIG1lZApWaW5nCkxl
cyBtZXIgwrsgCgoKCipSZWlzZXIgbWVkIG9tdGFua2UqCgpWw6VyIGLDpnJla3JhZnRzdHJhdGVn
aS4KTGVzIG1lciDCuyAKCgoKKkFsbHRpZCByZWlzZWdhcmFudGkqCgpQYWtrZXJlaXNlciBtZWQg
VmluZwpMZXMgbWVyIMK7IAoKIAoKa2FhbmRlcjJAb25saW5lLm5vIFttYWlsdG86a2FhbmRlcjJA
b25saW5lLm5vXS4gRHUgbW90dGFyIGRlbm5lIGUtcG9zdGVuIGZvcmRpIGR1IGhhciB2YWxndCDD
pSBhYm9ubmVyZSBww6UgbnloZXRzYnJldiBmcmEgVmluZywgZWxsZXIgbnlsaWcgaGFyIHJlaXN0
IG1lZCBvc3MuIE9tIGR1IGlra2Ugw7huc2tlciDDpSBmw6UgbnloZXRzYnJldiBmcmEgVmluZyBr
YW4gZHUgbWVsZGUgZGVnIGF2IGhlci4gIAoqCsKpIFZpbmcgMjAyNC4gUGFydCBvZiBOb3JkaWMg
TGVpc3VyZSBUcmF2ZWwgR3JvdXAuKgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
