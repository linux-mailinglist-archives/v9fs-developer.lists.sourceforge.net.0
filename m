Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F88923D3C
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Jul 2024 14:08:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sOcJ3-0001bJ-7M;
	Tue, 02 Jul 2024 12:08:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <statement-email.aeon.co-jp@onpvrcu.cn>)
 id 1sOcJ1-0001bD-MN for v9fs-developer@lists.sourceforge.net;
 Tue, 02 Jul 2024 12:08:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=axdR/1PaS/MT5S/PPWO2v853Q0Ax0dvEDyUAezPu5Qw=; b=HbDc/UoaMNcJhd6hwG4js+9qLq
 zjj1zDgMjkUakBiGWgLId3MBbBvIr6FQpy1sBOvLwurE43xUe2zNjIYYBglrQJPaLrRCy+SRBKED0
 Ea6JAU0JO9uoyVf3R0DZsQ+jWZbj4tykdxTd2jiYNFV4QvPS9MMWkRzTkapBBeV/Dfn4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=axdR/1PaS/MT5S/PPWO2v853Q0Ax0dvEDyUAezPu5Qw=; b=C
 2z4HcwWot81+H8OGZc+9lcF0tuxXBBThAmpaThIDmlEuWTEn8vOdmi2xQXbfKH/kgN4I4KYc9ySN0
 F+o7bzgBWhpbEcLLfpBQzrwyOgnTJ+1tFoN9wLnu1eOum92aYdnG1YoUvu3ni0OpnyERJjSGf16/r
 eHmAGtK0cm79x5MM=;
Received: from ifpkl.com ([152.32.147.132] helo=mail.onpvrcu.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sOcJ0-0000JT-LR for v9fs-developer@lists.sourceforge.net;
 Tue, 02 Jul 2024 12:08:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=onpvrcu.cn; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type;
 i=statement-email.aeon.co-jp@onpvrcu.cn;
 bh=axdR/1PaS/MT5S/PPWO2v853Q0Ax0dvEDyUAezPu5Qw=;
 b=a16acZKZoE2z0IxWcfJkVxJiIZpKhDnTblq64HPas33sADNGxF3aYRKopHbuhsSYSEKvCRNVGjpF
 tYDHJLdqo+2yj+jMP+dd53ZnXA98w9357PjJTTO0PMl5uhNlY7pNY1U7ryh74PUgbcWZxiTecjeI
 yt9dtdxGlLu8uE5pvvEMgLxGDIcvUpWtAy0twHbn8TUDEVz81+jBOgLa99BAOwts8d8CBYVFzcfs
 aeFEJvfG5Jh6OqoM2zHtPYoCEizTfywO40/lEuyektghsWAzUH5EyMe+3H8NZmcUJHoMAnqA8GSE
 aM/8AKmf2ourSBC42uklznqljZ9fxh1ruvLa8g==
Message-ID: <2E28EBAD12801F722EDAB0C1DFD6A9F8@Fjr.xmphcig>
From: =?utf-8?B?44Kk44Kq44Oz44Kr44O844OJ?=
 <statement-email.aeon.co-jp@onpvrcu.cn>
To: <v9fs-developer@lists.sourceforge.net>
Date: Tue, 2 Jul 2024 21:08:00 +0900
MIME-Version: 1.0
X-MSMail-Priority: High
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  いつもイオンマークのカードをご利用いただき、ありがとうございます。
    本メールはWeb明細(環境宣言)にご登録いただいているお客さまにお送りし�
    [...] 
 
 Content analysis details:   (2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: 287167.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: 287167.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: 287167.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [152.32.147.132 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [152.32.147.132 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [152.32.147.132 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1sOcJ0-0000JT-LR
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?NuaciOOBlOiri+axgumhjeOBruOBiuefpQ==?=
 =?utf-8?b?44KJ44Gb?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

44GE44Gk44KC44Kk44Kq44Oz44Oe44O844Kv44Gu44Kr44O844OJ44KS44GU5Yip55So44GE44Gf
44Gg44GN44CB44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQrmnKzjg6Hjg7zjg6vj
ga9XZWLmmI7ntLAo55Kw5aKD5a6j6KiAKeOBq+OBlOeZu+mMsuOBhOOBn+OBoOOBhOOBpuOBhOOC
i+OBiuWuouOBleOBvuOBq+OBiumAgeOCiuOBl+OBpuOBiuOCiuOBvuOBmeOAgg0KDQo25pyI44Gu
44GU6KuL5rGC6aGN44GM56K65a6a44GE44Gf44GX44G+44GX44Gf44CCDQoNCuKUgeKUgeKUgeKU
geKUgeKUgeKUgeKUgQ0K44GU5Yip55So44Kr44O844OJIO+8miDjgqTjgqrjg7Pjgqvjg7zjg4kN
CuOBlOiri+axgumhjSDvvJogKioqKuWGhiAgKOODreOCsOOCpOODs+OBl+OBpuihqOekuikNCuOB
iuaUr+aJleaXpSDvvJogMjAyNOW5tDfmnIgy5pelKOeBqykNCuKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgQ0KDQrilrzjgZTliKnnlKjmmI7ntLDjga7norroqo3jga/jgZPjgaHjgokNCmh0dHBzOi8v
d3d3LmFlb24uY28uanAvYXBwLw0KDQrilrzliKnnlKjjgZfjgZ/opprjgYjjga7nhKHjgYToq4vm
sYLjgavjgaTjgYTjgabjga/jgZPjgaHjgokNCmh0dHBzOi8vd3d3LmFlb24uY28uanAvaW5xdWly
eS9vYm9lbmFzaGkvDQoNCuODquODnOWkieabtOOBr+OBvuOBoOmWk+OBq+WQiOOBhOOBvuOBme+8
gQ0K77yc5piO57Sw5oyH5a6a44Oq44Oc57eg5YiH5pel77yeDQrigLvjgYrlvJXokL3lj6Pluqfj
gavoqK3lrprjgZXjgozjgabjgYTjgovph5Hono3mqZ/plqLjgavjgojjgaPjgabnt6DliIfml6Xj
gYznlbDjgarjgorjgb7jgZnjgIINCuOBiuW8leiQveWPo+W6pw0K44O744Kk44Kq44Oz6YqA6KGM
77yaMjAyNOW5tDbmnIgyNuaXpSjmsLQpMjM6NTkNCuODu+OBneOBruS7lumHkeiejeapn+mWou+8
mjIwMjTlubQ25pyIMjPml6Uo5pelKTIzOjU544G+44Gf44GvMjAyNOW5tDbmnIgyNOaXpSjmnIgp
MjM6NTkNCu+8nOacn+mWk+aMh+WumuODquODnOODu+WFqOODquODnOe3oOWIh+aXpe+8ng0KMjAy
NOW5tDbmnIgyMOaXpSjmnKgpMjM6NTkNCuKWvOWkieabtOe3oOWIh+aXpeOBq+OBpOOBhOOBpuip
s+OBl+OBj+OBr+OBk+OBoeOCiQ0KaHR0cHM6Ly93d3cuYWVvbi5jby5qcC9zZXJ2aWNlL3Jldm8v
DQrilrzjg6rjg5zlpInmm7TjgpLjgZXjgozjgovmlrnjga/jgZPjgaHjgokNCmh0dHBzOi8vd3d3
LmFlb24uY28uanAvYXBwL3Jldm8vDQrlj6Pluqfmrovpq5jjga7jgZTnorroqo3jg7vjgZTlhaXp
h5Hjga/jgIHjgYrmlK/miZXml6Xjga7liY3llrbmpa3ml6Xjgb7jgafjgavjgYrpoZjjgYTjgYTj
gZ/jgZfjgb7jgZnjgIINCuOBlOWIqeeUqOaYjue0sOOBr+OAgeOCouODl+ODquOAjOOCpOOCquOD
s+OCpuOCqeODrOODg+ODiOOAjeOBvuOBn+OBr+ODm+ODvOODoOODmuODvOOCuOOAjOaaruOCieOB
l+OBruODnuODjeODvOOCteOCpOODiOOAjeOBuOODreOCsOOCpOODs+OBhOOBn+OBoOOBjeOBlOei
uuiqjeOBj+OBoOOBleOBhOOAgg0K4pa85pqu44KJ44GX44Gu44Oe44ON44O844K144Kk44OI44Gv
44GT44Gh44KJDQpodHRwczovL3d3dy5hZW9uLmNvLmpwL2FwcC8NCuKAuzE15pel5pmC54K544Gn
44Gu6KuL5rGC56K65a6a6aGN44Gr44Gq44KK44G+44GZ44CCMTXvvZ4yMOaXpeOBq+OBlOiri+ax
gumhjeOCkuWkieabtOOBleOCjOOBn+WgtOWQiOOBr+OAgTIz5pel5Lul6ZmN44Gr44GU6KuL5rGC
6aGN44GM56K65a6a44GX44G+44GZ44CC5YaN5bqm6KuL5rGC6aGN56K65a6a44Oh44O844Or44KS
44GK6YCB44KK44GE44Gf44GX44G+44GZ44CCDQrigLsyMeaXpeS7pemZjeOBq+OBlOiri+axgumh
jeOBruWkieabtOOCkuOBleOCjOOBn+WgtOWQiOOAgeacgOe1gueahOOBquOBlOiri+axgumhjeOB
r+aciOacq+OBq+aaruOCieOBl+OBruODnuODjeODvOOCteOCpOODiOOCiOOCiuOBlOeiuuiqjeOB
j+OBoOOBleOBhOOAgg0K4oC744GK5byV6JC95Y+j5bqn44Gu6Kit5a6a44GM5a6M5LqG44GX44Gm
44GE44Gq44GE5aC05ZCI44Gv44CB5pyI5pyr6aCD44Gr55m66YCB44GE44Gf44GX44G+44GZ44Kz
44Oz44OT44OL44Gu5oyv6L6855So57SZ44Gn44Gu44GK5pSv5omV44GE44KS44GK6aGY44GE44GE
44Gf44GX44G+44GZ44CC44GK5byV6JC95Y+j5bqn44Gu6Kit5a6a44GM5a6M5LqG44GX44Gf44GL
44GU5LiN5piO44Gq5aC05ZCI44Gv5LiL6KiY44KI44KK44GU56K66KqN44GP44Gg44GV44GE44CC
DQpodHRwczovL2ZhcS5hZW9uLmNvLmpwL2ZhcS9zaG93LzY2MD9zaXRlX2RvbWFpbj1kZWZhdWx0
DQrigLvkuIDpg6jjgIHjgYrlvJXokL3ml6XjgYznlbDjgarjgovjgqvjg7zjg4njgYzjgZTjgZbj
gYTjgb7jgZnjgIINCuKAu+ODquODnOaJleOBhOOBr+OAgeWJjeaciDEx5pel772e5LuK5pyIMTDm
l6Xjgb7jgafjga7jgrfjg6fjg4Pjg5Tjg7PjgrDjgZTliKnnlKjliIbjga4x5Zue5omV44GE44Go
44Oc44O844OK44K55LiA5ous5omV44GE44KS44Oq44Oc5omV44GE44G45aSJ5pu044GE44Gf44Gg
44GR44G+44GZ44CCDQrigLvmmI7ntLDmjIflrprjg6rjg5zjga/jgZTliKnnlKjmmI7ntLAx5Lu2
44GU44Go44Gr44Oq44Oc5omV44GE44G45aSJ5pu044GE44Gf44Gg44GR44G+44GZ44CCDQrilrzn
j77lnKjjga7jgZTliKnnlKjlj6/og73poY3jga7jgZTnorroqo3jg7vjgZTliKnnlKjlj6/og73m
nqDjga7lpInmm7Tjga/jgIHku6XkuIvjgojjgorjgYrmiYvntprjgY3jgY/jgaDjgZXjgYTjgIIN
Cmh0dHBzOi8vd3d3LmFlb24uY28uanAvYXBwL3NldHRpbmdzL2xpbWl0Lw0K4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSBDQpXQU9OIFBPSU5U44Gr44Gk44GE44GmDQrilIHilIHilIHilIHilIHilIHi
lIHilIENCuOCr+ODrOOCuOODg+ODiOODu+ODh+ODk+ODg+ODiOaJleOBhOOBp+OBn+OBvuOCi1dB
T04gUE9JTlTmlbDjga/mr47mnIgyNeaXpeOBq+ODh+ODvOOCv+OBjOabtOaWsOOBleOCjOOBvuOB
meOAguOCouODl+ODquOAjOOCpOOCquODs+OCpuOCqeODrOODg+ODiOOAjeOBvuOBn+OBr+ODm+OD
vOODoOODmuODvOOCuOOAjOaaruOCieOBl+OBruODnuODjeODvOOCteOCpOODiOOAjeOBuOODreOC
sOOCpOODs+OBhOOBn+OBoOOBjeOBlOeiuuiqjeOBj+OBoOOBleOBhOOAgg0KKFdBT04gUE9JTlTj
gYzpgLLlkYjjgZXjgozjgarjgYTjgqvjg7zjg4njga/jgZTliKnnlKjjgYTjgZ/jgaDjgZHjgb7j
gZvjgpMpDQrilrzmmq7jgonjgZfjga7jg57jg43jg7zjgrXjgqTjg4jjga/jgZPjgaHjgokNCmh0
dHBzOi8vd3d3LmFlb24uY28uanAvYXBwL3BvaW50Lw0K4pa8V0FPTiBQT0lOVOOBruS9v+OBiOOC
i+W6l+iIl+ODu+S9v+OBhOaWueOBq+mWouOBl+OBpuOBr+OBk+OBoeOCiQ0KaHR0cHM6Ly9mYXEu
YWVvbi5jby5qcC9mYXEvc2hvdy81NjI/YmFjaz1mcm9udCUyRmNhdGVnb3J5JTNBc2hvdyZjYXRl
Z29yeV9pZD0xNjYmcGFnZT0xJnNpdGVfZG9tYWluPWRlZmF1bHQmc29ydD1zb3J0X2FjY2VzcyZz
b3J0X29yZGVyPWRlc2MNCuKUgeKUgeKUgeKUgeKUgeKUgeKUgeKUgQ0K44Ki44OX44Oq44KE44Oh
44O844Or44Gn44GK44OI44Kv44Gq5oOF5aCx44GM5Y+X5Y+W44KM44G+44GZ77yBDQrilIHilIHi
lIHilIHilIHilIHilIHilIENCuOCpOOCquODs+OCq+ODvOODieWFrOW8j+OCouODl+ODquOAjOOC
pOOCquODs+OCpuOCqeODrOODg+ODiOOAjeOBquOCieOBlOWIqeeUqOaYjue0sOOBrueiuuiqjeOC
hOODneOCpOODs+ODiOS6pOaPm+OBr+OCguOBoeOCjeOCk+OAgeS8muWToemZkOWumuOCr+ODvOOD
neODs+OCguWIqeeUqOOBp+OBjeS+v+WIqeOBp+OBiuODiOOCr+KZqg0K4pa8aVBob25l44KS44GK
5oyB44Gh44Gu5pa544Gv44GT44Gh44KJDQpodHRwczovL2l0dW5lcy5hcHBsZS5jb20vanAvYXBw
L2Flb24td2FsbGV0L2lkMTEwMDU2NDg0Mj9sPWphJmxzPTEmbXQ9OA0K4pa8QW5kcm9pZOOCueOD
nuODm+OCkuOBiuaMgeOBoeOBruaWueOBr+OBk+OBoeOCiQ0KaHR0cHM6Ly9wbGF5Lmdvb2dsZS5j
b20vc3RvcmUvYXBwcy9kZXRhaWxzP2lkPWpwLmNvLmFlb24uY3JlZGl0LmFuZHJvaWQud2FsbGV0
DQrilrzjgqTjgqrjg7Pjgarjganjgafjga7jgYrosrfjgYTnianmg4XloLHjgoTjgqvjg7zjg4nj
gq3jg6Pjg7Pjg5rjg7zjg7Pmg4XloLHjgoLjgYTjgaHml6njgY/jgYrlsYrjgZHvvIHjg6Hjg7zj
g6vjg57jgqzjgrjjg7Pjga7jgZTnmbvpjLLjga/jgZPjgaHjgokNCmh0dHBzOi8vd3d3LmFlb24u
Y28uanAvc2VydmljZS9uZXdzbGV0dGVyLw0K4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBDQrjgZTo
q4vmsYLmmI7ntLDmm7jjga7pg7XpgIHjgavjgaTjgYTjgaYNCuKUgeKUgeKUgeKUgeKUgeKUgeKU
geKUgQ0K44GU6KuL5rGC5piO57Sw5pu444Gu6YO16YCB44KS5biM5pyb44GV44KM44KL5aC05ZCI
44CB5pqu44KJ44GX44Gu44Oe44ON44O844K144Kk44OI44KI44KK44GK5omL57aa44GN44GP44Gg
44GV44GE44CC44Gq44GK44CB44CM44GU6KuL5rGC5piO57Sw5pu455m66KGM5omL5pWw5paZ44CN
44Go44GX44GmMemAmuOBguOBn+OCijExMOWGhijnqI7ovrwp44KS44GU6LKg5ouF44GE44Gf44Gg
44GN44G+44GZ44CCDQrmr47mnIgxMOaXpeOBvuOBp+OBrueZu+mMsuOBp+e/jOaciOOBruOBlOir
i+axguWIhuOCiOOCiumDtemAgeOBhOOBn+OBl+OBvuOBmeOAgg0K4pa844GK5omL57aa44GN44Gv
44GT44Gh44KJDQrigLvoq4vmsYLpoY3norrlrprjg6Hjg7zjg6vjgbjjga7jgZToq4vmsYLpoY3o
oajnpLrjga7pnZ7ooajnpLroqK3lrprjgoLjgZPjgaHjgonjgYvjgonlpInmm7TjgafjgY3jgb7j
gZnjgIINCmh0dHBzOi8vd3d3LmFlb24uY28uanAvYXBwL3NldHRpbmdzL2RldGFpbHMvDQrilIHi
lIHilIHilIHilIHilIHilIHilIENCuOBiuWuouOBleOBvuaDheWgseOBruacgOaWsOWMluOBq+OB
pOOBhOOBpg0K4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSBDQrjgZTnmbvpjLLmg4XloLEo5rCP5ZCN
44CB5L2P5omA44CB6YCj57Wh5YWI44CB44Oh44O844Or44Ki44OJ44Os44K544Gq44GpKeOBq+Wk
ieabtOOBjOOBlOOBluOBhOOBvuOBl+OBn+OCieOAgeaaruOCieOBl+OBruODnuODjeODvOOCteOC
pOODiOOCiOOCiuOBiuaJi+e2muOBjeOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAgg0K4omq
5L2P5omA5aSJ5pu05omL57aa44GN44Gu44GK6aGY44GE4omrDQrjgYrlvJXotorjgZfjgarjganj
gafkvY/miYDjgavlpInmm7TjgYznlJ/jgZjjgZ/pmpvjgavjga/jgIHjgYrml6njgoHjgavkvY/m
iYDlpInmm7Tjga7lsYrlh7rjgpLjgYrpoZjjgYTjgYTjgZ/jgZfjgb7jgZnjgILjgYrlsYrjgZHj
gYTjgZ/jgaDjgZHjgarjgYTloLTlkIjjgIHpg7XpgIHjgavjgojjgovph43opoHjgarjgYrnn6Xj
gonjgZvjgYzlsYrjgYvjgarjgYTloLTlkIjjgoLjgYLjgorjgb7jgZnjga7jgafjgZTms6jmhI/j
gY/jgaDjgZXjgYTjgIINCuKWvOOCq+ODvOODieeZu+mMsuWGheWuueeFp+S8muODu+WkieabtOOB
q+OBpOOBhOOBpuOBr+OBk+OBoeOCiQ0KaHR0cHM6Ly93d3cuYWVvbi5jby5qcC9pbnF1aXJ5L2No
YW5nZS8NCuKWvOODoeODvOODq+OCouODieODrOOCueOBruWkieabtOOBr+OBk+OBoeOCiQ0KaHR0
cHM6Ly93d3cuYWVvbi5jby5qcC9hcHAvc2V0dGluZ3MvcHJvZmlsZS8NCu+8ne+8ne+8ne+8ne+8
ne+8ne+8ne+8ne+8nQ0K4pag44Kk44Kq44Oz44K544Kv44Ko44Ki44Oh44Oz44OQ44O8SUTjg7vj
g5Hjgrnjg6/jg7zjg4njgpLjgYrlv5jjgozjga7loLTlkIgNCmh0dHBzOi8vd3d3LmFlb24uY28u
anAvYXBwL3NlYXJjaF9pZF9wd19yZWlzc3VlLw0K4pag44KI44GP44GC44KL44GU6LOq5ZWPDQpo
dHRwczovL2ZhcS5hZW9uLmNvLmpwLz9zaXRlX2RvbWFpbj1kZWZhdWx0DQrilqDjgYrllY/jgYTl
kIjjgo/jgZvlhYgNCmh0dHBzOi8vd3d3LmFlb24uY28uanAvaW5xdWlyeS8NCuKWoOOCueODnuOD
vOODiOODleOCqeODs+OBruaWueOBr+OBk+OBoeOCieOCkuOBlOWIqeeUqOOBj+OBoOOBleOBhOOA
guOBiuWbsOOCiuOBlOOBqOOBruino+axuuaWueazleOCkuOBlOahiOWGheOBhOOBn+OBl+OBvuOB
meOAgg0KW+OCpOOCquODs+OCq+ODvOODieOBq+OBpOOBhOOBpl0NCmh0dHBzOi8vd3d3LmFlb24u
Y28uanAvdi1pdnIvDQpb44Kk44Kq44Oz6YqA6KGM44Gr44Gk44GE44GmXQ0KaHR0cHM6Ly92aXZy
LmFlb25iYW5rLmNvLmpwLw0K4pag44K744Kt44Ol44Oq44OG44Kj44Gr44Gk44GE44GmKOWuieW/
g+ODu+WuieWFqOOBquapn+iDveOAgeOCguOBl+OCguOBruOBqOOBjeOBruOCteODvOODk+OCuSkN
Cmh0dHBzOi8vd3d3LmFlb24uY28uanAvc2VjdXJpdHkvDQrvvJ3vvJ3vvJ3vvJ3vvJ3vvJ3vvJ3v
vJ3vvJ0NCuOBk+OBruODoeODvOODq+OCouODieODrOOCuVsgc3RhdGVtZW50QGVtYWlsLmFlb24u
Y28uanBd44Gv6YCB5L+h5bCC55So44Ki44OJ44Os44K544Gu44Gf44KB44CB44GU6L+U5L+h44GE
44Gf44Gg44GE44Gm44KC44GU55So5Lu244Gv5om/44KM44G+44Gb44KT44CCDQrlvZPjg6Hjg7zj
g6vjgavjgYrlv4PlvZPjgZ/jgorjga7jgarjgYTmlrnjga/jgIHlpKflpInjgYrmiYvmlbDjgpLj
gYrmjpvjgZHjgYTjgZ/jgZfjgb7jgZnjgYzjgIHjgZ3jga7ml6jjgpLjgYrmm7jjgY3mt7vjgYjj
gYTjgZ/jgaDjgY3kuIvoqJjjgqLjg4njg6zjgrnjgb7jgafjgYrpgIHjgorjgY/jgaDjgZXjgYTj
gIINCm5ldGJyYW5jaEBhZW9uLmNvLmpwDQrilIHilIHilIHilIHilIHilIHilIHilIHilIENCueZ
uuihjO+8muagquW8j+S8muekvuOCpOOCquODs+mKgOihjA0KaHR0cHM6Ly93d3cuYWVvbmJhbmsu
Y28uanAvDQrmpa3li5nlj5foqJfkvJrnpL7vvJrjgqTjgqrjg7Pjg5XjgqPjg4rjg7Pjgrfjg6Pj
g6vjgrXjg7zjg5PjgrnmoKrlvI/kvJrnpL4NCmh0dHBzOi8vd3d3LmFlb25maW5hbmNpYWwuY28u
anAvDQrjgZPjga7jg6Hjg7zjg6vjgavmjrLovInjgZXjgozjgZ/lhoXlrrnjgpLoqLHlj6/jgarj
gY/ou6LovInjgZnjgovjgZPjgajjgpLnpoHjgZjjgb7jgZnjgIINCuKUgeKUgeKUgeKUgeKUgeKU
geKUgeKUgeKUgQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5
ZnMtZGV2ZWxvcGVyCg==
