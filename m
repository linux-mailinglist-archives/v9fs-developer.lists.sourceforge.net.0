Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8C54595A4
	for <lists+v9fs-developer@lfdr.de>; Mon, 22 Nov 2021 20:33:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mpF4P-0005eo-Em; Mon, 22 Nov 2021 19:33:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <seashore-1@bfhesjq.com>) id 1mpF4N-0005ei-Bc
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Nov 2021 19:33:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y26KzJcmT8b3M5XwDZplZqNRqUqEEr8gFj9B9bJMShs=; b=HSya53KdY9m2dNcAdVKkdqH6Tn
 zyIBdlOKX1CgdnMTIL26h9ao46QeG0HmANjecO5EiUhd70gPSp05acTCMvFichWG4+XKwASLTRDPn
 voPNqMj6rMwn2hN0MOZmBX1gCGiVfox5FXQH/1AnP6zzWcXVeI+O8bJt7dP0CHpbWw+Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y26KzJcmT8b3M5XwDZplZqNRqUqEEr8gFj9B9bJMShs=; b=e
 uZqG6+Mr6uDumUXrlhv8dMhxau8wM8lXhsLAz/zajGr0pft9uBeGucxfLaZOcp+Fmtf43gjHzRCcV
 992iTk8BFAIhTFSzlhp+GkKoQvTWAP2yik7rUJAJaSdU3I209Pk2ZiQZLQRDQTZ2+ebOrzIXO4QBU
 Gk85NDb9fCowyOv8=;
Received: from [23.236.126.64] (helo=mail.bfhesjq.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpF4J-0057yq-A8
 for v9fs-developer@lists.sourceforge.net; Mon, 22 Nov 2021 19:33:39 +0000
Received: from ntsy (unknown [58.62.3.41])
 by mail.bfhesjq.com (Postfix) with ESMTPA id E8E98178D66B
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 22 Nov 2021 16:03:41 -0300 (-03)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfhesjq.com; s=default;
 t=1637607822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=y26KzJcmT8b3M5XwDZplZqNRqUqEEr8gFj9B9bJMShs=;
 b=epKAO/40n8GrHXn2jHZnrtJcToU+ej7hEyveOeqnXNVKRQcRY8MgldOk0LlbN4xl/7ti14
 8Tu4pTStElWpmKY3xdJUVgNkxtnZGalY3jT8O4ce3Jpqyr7Xoa880+FLM1Dq1BU9pHIH+s
 SunVE+CBSzE3shVHOT51B0Fs3U98lyQ=
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Tue, 23 Nov 2021 03:03:29 +0800
Message-ID: <00668ab63231$88bcab12$af9e66b4$@ntsy>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-Spam: Yes
X-Spam-Score: 7.9 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  いつもメルカリをご利用いただきありがとうございます。
    すぐに3000円のポイントを受け取ります。 下記URLをクリックして受け取ります。
    
 
 Content analysis details:   (7.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
                             [23.236.126.64 listed in zen.spamhaus.org]
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [23.236.126.64 listed in dnsbl-1.uceprotect.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.2 HTML_OBFUSCATE_10_20   BODY: Message is 10% to 20% HTML
                             obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  1.5 HTML_FONT_TINY_NORDNS  Font too small to read, no rDNS
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1mpF4J-0057yq-A8
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ44Oh44Or44Kr44Oq44CR44GK6LK344GE?=
	=?utf-8?b?54mp44Gn5L2/44GI44KLMzAwMOWGhuWIhuODneOCpOODs+ODiOW/hQ==?=
	=?utf-8?b?44Ga44KC44KJ44GI44KL77yB?=
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
From: =?utf-8?B?44Oh44Or44Kr44Oq?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?B?44Oh44Or44Kr44Oq?= <seashore-1@bfhesjq.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQrjgYTjgaTjgoLjg6Hjg6vjgqvjg6rjgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzj
gajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCg0KIA0KDQrjgZnjgZDjgaszMDAw5YaG44Gu44Od44Kk
44Oz44OI44KS5Y+X44GR5Y+W44KK44G+44GZ44CCDQoNCiANCg0K5LiL6KiYVVJM44KS44Kv44Oq
44OD44Kv44GX44Gm5Y+X44GR5Y+W44KK44G+44GZ44CCDQoNCmh0dHBzOi8vd3d3Lm1lcmNhcmku
Y29tL2pwLzMwMDBKUFkvY29kZT89Vk5lazdpN054SmhnMmpFRjNqSUsNCg0KIA0KDQrilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIANCg0KIA0KDQrjgJAxMS8xMX4xMS8zMOOAkeaLm+W+heOB
l+OBn+S6uuOCguOBleOCjOOBn+S6uuOCgu+8geOBiuiyt+OBhOeJqeOBp+S9v+OBiOOCizEwMDDl
hobliIbjg53jgqTjg7Pjg4jlv4XjgZrjgoLjgonjgYjjgovvvIENCg0KIA0KDQrnj77lnKjjg6Hj
g6vjgqvjg6rjgafjga/jgIzjgIoxMeaciOaLm+W+heOCreODo+ODs+ODmuODvOODs+OAi+aLm+W+
heOBl+OBn+S6uuOCguOBleOCjOOBn+S6uuOCgu+8geOBiuiyt+OBhOeJqeOBp+S9v+OBiOOCizEw
MDDlhobliIbjg53jgqTjg7Pjg4jlv4XjgZrjgoLjgonjgYjjgovvvIHjgI3jgpLplovlgqzkuK3j
gafjgZnvvIENCg0KIA0KDQrvvLzlrrbml4/jg7vlj4vpgZTjgpLjg6Hjg6vjgqvjg6rjgavmi5vl
voXjgZfjgabmrLLjgZfjgYvjgaPjgZ/llYblk4HjgpLjgYrlvpfjgavosrfjgYTjgb7jgZvjgpPj
gYvvvJ/vvI8NCg0KIA0KDQox5Lq65oub5b6F44GZ44KL44GU44Go44Gr44CBMTAwMOWGhuWIhuOB
ruODneOCpOODs+ODiOOBjOW/heOBmuOCguOCieOBiOOCi++8ge+8iFAxMDAw44KC44KJ44GI44KL
44Gu44Gv5pyA5aSnM+S6uuOBvuOBp++8iQ0KDQogDQoNCjLkurrmi5vlvoXjgacyMDAw5YaG5YiG
44CBM+S6uuaLm+W+heOBpzMwMDDlhobliIbjgpJHRVTjgafjgY3jgovjg4Hjg6Pjg7PjgrnvvIEN
Cg0KIA0KDQrigLsx5Lq644Gu5oub5b6F44Gr44Gk44GN44CBUDEwMDDjga7jgYbjgaFQNTAw44Gv
44CM5oub5b6F44GX44Gf5Lq644CN44Gu44Ko44Oz44OI44Oq44O85Y+K44Gz44CM5oub5b6F44GV
44KM44Gf5Lq644CN44GM5paw6KaP5Lya5ZOh55m76Yyy44KS5a6M5LqG44GX44Gf5pmC54K544Gn
5LuY5LiO44GV44KM44CB5q6L44KK44GuUDUwMOOBr+OAjOaLm+W+heOBleOCjOOBn+S6uuOAjeOB
ruaWsOimj+S8muWToeeZu+mMsuW+jOOAkDHpgLHplpPku6XlhoXjgJHjgavku5jkuI7jgZXjgozj
gb7jgZkNCg0K4oC7NOS6uuebruS7pemZjeOBruaLm+W+heOBq+OBpOOBhOOBpuOBr+OAgeOAjOaL
m+W+heOBl+OBn+S6uuOAjeOBruOCqOODs+ODiOODquODvOWPiuOBs+OAjOaLm+W+heOBleOCjOOB
n+S6uuOAjeOBjOaWsOimj+S8muWToeeZu+mMsuOCkuWujOS6huOBl+OBn+aZgueCueOBp1A1MDDj
ga7jgb/ku5jkuI7jgZXjgozjgIHlvozml6Xjga5QNTAw44Gu5LuY5LiO44Gv44GU44GW44GE44G+
44Gb44KTDQoNCuKAu+acrOOCreODo+ODs+ODmuODvOODs+OBruWPguWKoOOBq+OBr+OCouODl+OD
quWGheOCreODo+ODs+ODmuODvOODs+ODmuODvOOCuOOBi+OCieOCqOODs+ODiOODquODvOOBjOW/
heimgeOBp+OBmQ0K44GT44Gu5qmf5Lya44Gr44CB44G+44Gg44Oh44Or44Kr44Oq44KS44Gv44GY
44KB44Gm44GE44Gq44GE5a625peP44O75Y+L6YGU44KS44Oh44Or44Kr44Oq44Gr5oub5b6F44GX
44Gm44CB44GK5b6X44Gr6LK344GE54mp44GX44KI44GG77yBDQoNCiANCg0K4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSAIA0KDQrlr77osaHmnaHku7bjgoTjgq3jg6Pjg7Pjg5rjg7zjg7Pj
gavplqLjgZnjgovoqbPntLDjga/jgIHkuIvoqJjjga7jgq3jg6Pjg7Pjg5rjg7zjg7PnibnoqK3j
g5rjg7zjgrjjgpLjgZTnorroqo3jgY/jgaDjgZXjgYTjgIINCg0KaHR0cHM6Ly9qcC1uZXdzLm1l
cmNhcmkuY29tL2FydGljbGVzLzIwMjEvMTEvMTEvaW52aXRlY3BuLw0KDQogDQoNCiANCg0K5LuK
5b6M44Go44KC44CB44Oh44Or44Kr44Oq44KS44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX
44G+44GZ44CCDQogDQogDQoNCg0KDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
