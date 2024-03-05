Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB01A872985
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Mar 2024 22:37:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rhcTx-0003PW-QA;
	Tue, 05 Mar 2024 21:37:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L13S33155M15@s1.arrobamail.com>)
 id 1rhcTw-0003PP-NR for v9fs-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 21:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z7RubfQSyBYeaBNbxdqokNqTMFyyMjy1Cd9ZnmoSMHs=; b=eLrmcv4lkQBrXe7tMtW7zXDuvR
 QiGGt0d3pjkTjLIFS8LxuVPcr7BKOY8RxpTfhBbmGuhxypkAP6QOMtXVuy2iN0g24GaZlTmm5+Nwx
 2hH0+DouTwyRhPny0EZnqN6B+PvpoeShaye469x4Q/G3SBeSPT2AUZYryInsyGYZCZ+Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z7RubfQSyBYeaBNbxdqokNqTMFyyMjy1Cd9ZnmoSMHs=; b=X
 sjKKH7XxxiYRAXzwDmmqBQd75LkSVdA5NCsbGH26y01I6VOiG45ahFODzN5HPxSNr9K01yMafBEiK
 crpW4s4GSrE0wehy0k6zFbxfc/2bk+VzL5yUadq4ipdJVhmR6kJclX8qIV1sPjzG9qKOpznHvl0oh
 iw4VL7ewJZDInlkk=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhcTo-0005wR-PT for v9fs-developer@lists.sourceforge.net;
 Tue, 05 Mar 2024 21:37:53 +0000
Date: Tue, 5 Mar 2024 15:37:39 -0600
To: v9fs-developer@lists.sourceforge.net
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <m2lhJjU0sdHDUYZl4hbooy6nZfGoWNHeLmqZ40Kd3c@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTUtMTMtMzMxNTUtMjY5LXMxLmFycm9iYW1haWwuY29t
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE1OzEzOzMzMTU1OzI2OQ==
X-bhid: X-bhd: 15;13;33155
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 15:13s33155:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1709674659; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Tue,=205=20Mar=202024=2015:37:39=20-0600
 |To:v9fs-developer@lists.sourceforge.net
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:La=20clave=20para=20mejorar=20tu=20ambiente=20laboral
 |Message-ID:<m2lhJjU0sdHDUYZl4hbooy6nZfGoWNHeLmqZ40Kd3c@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTUtMTMtMzM
 xNTUtMjY5LXMxLmFycm9iYW1haWwuY29t
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzE1OzEzOzMzMTU1Oz
 I2OQ=3D=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Drrw
 yyswrswyseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:15:13s33155:124931:WPservicesESP
 |List-ID:<156:596790> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_m2lhJjU0sdHDUYZl4h
 booy6nZfGoWNHeLmqZ40Kd3c";
 bh=Z7RubfQSyBYeaBNbxdqokNqTMFyyMjy1Cd9ZnmoSMHs=;
 b=oA78/hLHsrSVC9ntQqisaoR/hpT+cAfyw3MGdj7QNzScBeo1f2t7AK1rekeSYMA+pO5qOKrvt
 olt92iPjMiFvjz5C/27PcT2mXE+FINo8K0aiuA7JQ5bBnk11xDqfozAVjOv3gYJ542+TO52g8
 e5eMHh0XbHU7Rp9/1/YE1w08Q=
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola. Trabajar en Recursos Humanos puede ser un desafío enorme.
    Todos los días te enfrentas a situaciones complejas, tratando de mantener
    un equilibrio entre las necesidades de la empresa y las de los emp [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1rhcTo-0005wR-PT
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] La clave para mejorar tu ambiente laboral
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Mariann Rivas <mariann.rivas@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoJCgoKSG9sYS4KClRyYWJhamFyIGVuIFJlY3Vyc29zIEh1bWFub3MgcHVlZGUgc2VyIHVu
IGRlc2Fmw61vIGVub3JtZS4gVG9kb3MgbG9zIGTDrWFzIHRlIGVuZnJlbnRhcyBhIHNpdHVhY2lv
bmVzIGNvbXBsZWphcywgdHJhdGFuZG8gZGUgbWFudGVuZXIgdW4gZXF1aWxpYnJpbyBlbnRyZSBs
YXMgbmVjZXNpZGFkZXMgZGUgbGEgZW1wcmVzYSB5IGxhcyBkZSBsb3MgZW1wbGVhZG9zLiBQZXJv
LCDCv3kgc2kgdGUgZGlqZXJhIHF1ZSBoYXkgdW5hIG1hbmVyYSBkZSBmYWNpbGl0YXIgZXNlIHRy
YWJham8sIGVzcGVjaWFsbWVudGUgY3VhbmRvIHNlIHRyYXRhIGRlIGVudGVuZGVyIGVsIGNsaW1h
IGxhYm9yYWw/CgpQZXJtw610ZW1lIHByZXNlbnRhcnRlIEV2YWx0cmljLCBudWVzdHJvIGludHVp
dGl2byBzb2Z0d2FyZSBkZSBlbmN1ZXN0YXMgZGlzZcOxYWRvIHBhcmEgbWVkaXIgeSBlbnRlbmRl
ciBlbCBjbGltYSBsYWJvcmFsIGRlIHR1IGVtcHJlc2EgZGUgbGEgZm9ybWEgbcOhcyBlZmljaWVu
dGUgeSBzZW5jaWxsYSBwb3NpYmxlLgoKUXVpZXJvIGNvbnRhcnRlIHF1ZSB5YSBtdWNoYXMgZW1w
cmVzYXMgeSBvcmdhbml6YWNpb25lcyBoYW4gdmlzdG8gbWVqb3JhcyBlbiBzdSBhbWJpZW50ZSBs
YWJvcmFsIGdyYWNpYXMgYSBzdSB1c28sIGFkZW3DoXMmbmJzcDt1dGlsaXphciBFdmFsdHJpYyB0
ZSB0cmFlcsOhIG11Y2hvcyBiZW5lZmljaW9zLCBwZXJvIHF1aXNpZXJhIGRlc3RhY2FyIGxvcyBz
aWd1aWVudGVzOgoKCglTaW1wbGljaWRhZDogQ3JlYSBlbmN1ZXN0YXMgcGVyc29uYWxpemFkYXMg
ZGUgbWFuZXJhIHLDoXBpZGEmbmJzcDt5IHNlbmNpbGxhLgoJQW7DoWxpc2lzJm5ic3A7ZW4gdGll
bXBvIHJlYWw6Jm5ic3A7QWNjZWRlIGEgbG9zIHJlc3VsdGFkb3MgZGUgbGFzIGVuY3Vlc3RhcyBl
biB0aWVtcG8gcmVhbCwgcGVybWl0acOpbmRvdGUgYWN0dWFyIGRlIGlubWVkaWF0by4KCVByZWNp
c2nDs246IE9idGllbmUgaW5mb3JtYWNpw7NuJm5ic3A7cHJlY2lzYSB5IHJlbGV2YW50ZSBxdWUg
dGUgYXl1ZGFyYSBhJm5ic3A7dG9tYXIgZGVjaXNpb25lcyBpbmZvcm1hZGFzLgoJQ29uZmlkZW5j
aWFsaWRhZDogQXNlZ3VyYSBsYSBwcml2YWNpZGFkIGRlIGxhcyByZXNwdWVzdGFzLCBsbyBxdWUg
Zm9tZW50YSBsYSBob25lc3RpZGFkIGRlIHR1cyBlbXBsZWFkb3MuCglTb3BvcnRlIGNvbnN0YW50
ZTogTnVlc3RybyBlcXVpcG8gZGUgc29wb3J0ZSBlc3TDoSBzaWVtcHJlIGRpc3BvbmlibGUgcGFy
YSBheXVkYXJ0ZSBjb24gY3VhbHF1aWVyIHByb2JsZW1hIG8gZHVkYSBxdWUgcHVlZGFzIHRlbmVy
LgoKCkFob3JhIGVzIHR1IHR1cm5vIGRlIHRvbWFyIGVsIGNvbnRyb2wgZGVsIGNsaW1hIG9yZ2Fu
aXphY2lvbmFsIGRlIHR1IGVxdWlwby4gVGUgaW52aXRvIGEgcHJvYmFyIEV2YWx0cmljIHkgZGVz
Y3VicmlyIHRvZG8gbG8gcXVlIHB1ZWRlIGhhY2VyIHBvciB0dSBlbXByZXNhIHUgb3JnYW5pemFj
acOzbgoKSGF6IGNsaWMgYXF1w60mbmJzcDtwYXJhIGNvbWVuemFyIHR1IHBydWViYSBncmF0dWl0
YS4gRXN0YW1vcyBzZWd1cm9zIGRlIHF1ZSwgdW5hIHZleiBxdWUgcHJ1ZWJlcyBFdmFsdHJpYywg
ZWwgZGVzZW1wZcOxbyZuYnNwO2RlIHR1IGVxdWlwbyBzZSB2ZXLDoSBtZWpvcmFkby4KCk5vIGVz
cGVyZXMgbcOhcy4gwqFFbXBpZXphIGEgbWVqb3JhciBlbCBjbGltYSBsYWJvcmFsIGNvbiBFdmFs
dHJpYyBob3kgbWlzbW8hCgoKCQoJCQoJCQkKCQkJTWFyaWFubiBSaXZhcwoKCQkJTGzDoW1hbm9z
IHNpbiBjb3N0bzogMDAgMSAoODgwKSAzNTEgNzkyNAoKCQkJQ2l1ZGFkIGRlIE3DqXhpY286ICg1
NSkgNTAxOCAwNTY1CgoJCQlDb2xvbWJpYSwgQm9nb3TDocKhOiAoNTcxKSA1ODAgMDM1MQoKCQkJ
UmVww7pibGljYSBEb21pbmljYW5hOiAoODI5KSA5NTQgODA3NwoKCQkJR3VhdGVtYWxhOiAoNTAy
KSAyMzE1IDk4MzUKCgkJCUVsIFNhbHZhZG9yOiAoNTAzKSAyMTEzIDk0MjIKCgkJCUNoaWxlOiAo
NTYpIDIyNTggMzU5MjkKCgkJCVdoYXRzQXBwOiArNTIgMzMgMTYwNyAyMDg5CgkJCQoJCQkKCQkJ
CgkJCQoJCQoJCgoKQ2xpYyBhcXXDrSZuYnNwO3BhcmEgZGFyc2UgZGUgYmFqYS4KCgoKClBhcmEg
cmVtb3ZlciBzdSBkaXJlY2NpJm9hY3V0ZTtuIGRlIGVzdGEgbGlzdGEgaGFnYSA8YSBocmVmPSJo
dHRwczovL3MxLmFycm9iYW1haWwuY29tL3Vuc3VzY3JpYmUucGhwP2lkPXJyd3l5c3dyc3d5c2V1
cCI+Y2xpY2sgYXF1JmlhY3V0ZTs8L2E+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
