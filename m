Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E5752FECF
	for <lists+v9fs-developer@lfdr.de>; Sat, 21 May 2022 20:32:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nsTtV-0001Lo-1W; Sat, 21 May 2022 18:32:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <information@ma.email.aeon.co.jp>) id 1nsTtU-0001Li-6U
 for v9fs-developer@lists.sourceforge.net; Sat, 21 May 2022 18:32:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4bO/CZDCTnPiEdt5ZwVfXTrG00wSX5VAIU+onq1uxjI=; b=DKitg5fuLwKqLm2+G+vNwU33wz
 ri1YdSZMWgSmy8USShMGxCh4mQGa2SoWcT/giL8B+bKN5jRwcu7MdCPVZpzy8URkUtYQwgsCQ9eFT
 9y9NRv5886OvUSHufmahJrUpQi+iZ9VZwCqjHLEg6tFpzct4+h4meK+oJ+ZY2ZcKXN/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4bO/CZDCTnPiEdt5ZwVfXTrG00wSX5VAIU+onq1uxjI=; b=Y
 9lzMAwMN08me7ptnYWq0xx7vSthoqTl8Bq9okoVIcH5QfN8jxRg3Gje21QKkSBNTBSfNbHcWfQe9m
 WvGdc4lvDJuj9/+IKJ2b/Ap18i+zhLVwwgOrZarCj7meVdRZZbhV7vHLFl4jTyeyWDOj+YWkGsF16
 tO05Zgs5ew4MdqLc=;
Received: from [59.153.158.37] (helo=ma.email.aeon.co.jp)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nsTtO-0008UW-Di
 for v9fs-developer@lists.sourceforge.net; Sat, 21 May 2022 18:32:02 +0000
Message-ID: <20220521113158154467@ma.email.aeon.co.jp>
From: =?utf-8?B?44Kk44Kq44Oz44K544Kv44Ko44Ki44Oh44Oz44OQ44O844OL44Ol44O844K5?=
 <information@ma.email.aeon.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sat, 21 May 2022 11:31:51 -0800
MIME-Version: 1.0
X-mailer: Ovm 2
X-Spam-Score: 6.5 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  本メールは重要なお知らせのため、メール配信を希望されていない方にもお送りしております。
    当お客様のアカウントが許可されていない第三者によって悪用されていることを検出しました
    
 
 Content analysis details:   (6.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
               [Blocked - see <https://www.spamcop.net/bl.shtml?59.153.158.37>]
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [59.153.158.37 listed in dnsbl-1.uceprotect.net]
  0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo;id=ma.email.aeon.co.jp;ip=59.153.158.37;r=util-spamd-2.v13.lw.sourceforge.com]
  0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;id=information%40ma.email.aeon.co.jp;ip=59.153.158.37;r=util-spamd-2.v13.lw.sourceforge.com]
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.1 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nsTtO-0008UW-Di
Subject: [V9fs-developer] =?utf-8?b?77yc57eK5oCl6YCa55+l77yeYWVvbiBjYXJk?=
	=?utf-8?b?IOOBiuWuouanmOaDheWgseOBrueiuuiqjQ==?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5pys44Oh44O844Or44Gv6YeN6KaB44Gq44GK55+l44KJ44Gb44Gu44Gf44KB44CB44Oh44O844Or
6YWN5L+h44KS5biM5pyb44GV44KM44Gm44GE44Gq44GE5pa544Gr44KC44GK6YCB44KK44GX44Gm
44GK44KK44G+44GZ44CCDQoNCuW9k+OBiuWuouanmOOBruOCouOCq+OCpuODs+ODiOOBjOioseWP
r+OBleOCjOOBpuOBhOOBquOBhOesrOS4ieiAheOBq+OCiOOBo+OBpuaCqueUqOOBleOCjOOBpuOB
hOOCi+OBk+OBqOOCkuaknOWHuuOBl+OBvuOBl+OBnw0KDQoNCg0K44K744Kt44Ol44Oq44OG44Kj
5LiK44Gu55CG55Sx44GL44KJ44CB5Yid44KB44Gm44Ki44Kr44Km44Oz44OI44Gu5L2/55So44KS
5Yi26ZmQ44GX44G+44GX44Gf44CC44GT44Gu44Oh44O844Or44KS5Y+X5L+h44GX44Gm44GL44KJ
MjTmmYLplpPku6XlhoUNCuOBq+OAgeS7peS4i+OBruODquODs+OCr+OCkuOCr+ODquODg+OCr+OB
l+OBpuOAgeWAi+S6uuOCouOCq+OCpuODs+ODiOOBruWvvuW/nOOBmeOCi+aDheWgseOCkuOBp+OB
jeOCi+OBoOOBkeaXqeOBj+eiuuiqjeOBl+OBpuOBj+OBoOOBleOBhOOAguOBlOeQhuino+OBrg0K
44G744Gp44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCDQoNCmh0dHBzOi8v
d3d3LWFlb24tY28tanAubW9ydG9uc3VnZ2VzdGlvbmRlbW8uY29tPzlvY3ZuNmx5dC5qd3JoOQ0K
DQoNCuKUgeKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKAleKA
leKUgQ0K4peG5LiN5q2j5Yip55So44Gu6Ziy5q2i44Gu44Gf44KB44Gr4omq5pys5Lq66KqN6Ki8
44K144O844OT44K54omrDQrilIHigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXigJXi
gJXigJXigJXigJXigJXilIENCuOCpOODs+OCv+ODvOODjeODg+ODiOOCt+ODp+ODg+ODlOODs+OC
sOOBrumam+OAgeOCq+ODvOODieeVquWPt+ODu+acieWKueacn+mZkOOBq+WKoOOBiOOBpuOAgeOA
jDNE44K744Kt44Ol44Ki44CN44Gn44GU55m76Yyy44GE44Gf44Gg44GE44Gm44GE44KL44CMSUTj
gI3jgajjgIzjg5Hjgrnjg6/jg7zjg4njgI3jgpLlhaXlipvjgZnjgovjgIzmnKzkurroqo3oqLzj
grXjg7zjg5PjgrnjgI3jgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY/jgZPjgajjgafjgIHjgIzjgarj
gorjgZnjgb7jgZfjgI3jgarjganjga7kuI3mraPliKnnlKjjgpLpmLLmraLjgZnjgovjgZPjgajj
gYzjgafjgY3jgb7jgZnjgIINCg0K4pa84pa96Kmz57Sw44KE44GU55m76Yyy5pa55rOV44Gv44GT
44Gh44KJDQpodHRwczovL3d3dy1hZW9uLWNvLWpwLm1vcnRvbnN1Z2dlc3Rpb25kZW1vLmNvbT9n
cTVhdWpoaWEubHpvNDljZQ0KDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K4oC75pys44Oh44O844Or
44GvQUVPTuOCq+ODvOODieOBi+OCieiHquWLleeahOOBq+mAgeS/oeOBleOCjOOBpuOBhOOBvuOB
meOAgg0K4oC75pys44Oh44O844Or44Gr5b+D5b2T44Gf44KK44GM44Gq44GE5pa544Gv44CB44GK
5omL5pWw44Gn44GZ44GM44GK5ZWP44GE5ZCI44KP44Gb5YWI44G+44GnDQogICDjgZTpgKPntaHj
gYTjgZ/jgaDjgY3jgb7jgZnjgojjgYbjgIHjgYrpoZjjgYTnlLPjgZfjgYLjgZLjgb7jgZnjgIIN
CuKAu+acrOODoeODvOODq+OBuOOBrui/lOS/oeOBr+WPl+S7mOOBhOOBn+OBl+OBpuOBiuOCiuOB
vuOBm+OCk+OAgg0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0K44GK55+l44KJ44GbOg0Kwrfjg5Dj
grnjg6/jg7zjg4njga/oqrDjgavjgoLmlZnjgYjjgarjgYTjgafjgY/jgaDjgZXjgYTjgIINCsK3
5YCL5Lq65oOF5aCx44Go6Zai5L+C44GM44Gq44GP44CB5o6o5ris44GX44Gr44GP44GE44OQ44K5
44Ov44O844OJ44KS5L2c5oiQ44GX44Gm44GP44Gg44GV44GE44CC5aSn5paH5a2X44Go5bCP5paH
5a2X44CB5pWw5a2X44CB44GK44KI44Gz6KiY5Y+344KS5b+F44Ga5L2/55So44GX44Gm44GP44Gg
44GV44GE44CCDQrCt+OCquODs+ODqeOCpOODs+OCouOCq+OCpuODs+ODiOOBlOOBqOOBq+OAgeeV
sOOBquOCi+ODkOOCueODr+ODvOODieOCkuS9v+eUqOOBl+OBpuOBj+OBoOOBleOBhOOAgg0KDQoN
CuOBqeOBhuOBnuOCiOOCjeOBl+OBj+OBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAgg0K44CQ6YWN
5L+h5YWD44CRDQogQUVPTiBDUkVESVQgU0VSVklDRSBDTy4sIEx0ZC4NCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
