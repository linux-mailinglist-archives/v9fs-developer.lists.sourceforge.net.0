Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12233343188
	for <lists+v9fs-developer@lfdr.de>; Sun, 21 Mar 2021 07:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QVB0pPua0SypTxzVvJW76t8Dr2xKxCZRBZw0vJy5FkY=; b=DKA5lrwmX5iPEJqQnQg3tmKgE7
	RnValAPnO7oJlU8JK+s26BHmQWZmfTNLMLqcbvfBtKxJKA/rHZ1jkAnxE5voX2VdnAe4OAaCu0zf+
	oC3PfYma/7tivr+5jNhvMhwNlblTiv6Tb3jPvK7eJWYqIDIWSWMoa+4vzgBr2terhIZQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lNrtJ-0005bT-Kb; Sun, 21 Mar 2021 06:48:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <support@tout.vtu.bg>) id 1lNrtG-0005bJ-A1
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Mar 2021 06:48:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AUmF4XVY2ac5tTU3lr1LuXIlPx8+k+XB1+UmUGfJ3wM=; b=F0c05FhIJ2+g3SS/5abbKyBI9Y
 cByMa+KMLr0UAYfZG08ve7BUNs989OEtbNYOb/NY2dMy1tzmU6HCudnuCXW5xmz58h87HpFNK940P
 vb0FyvSlpyxJX/f7c5epPqRJfv7/maAzqZFjWreBZ0uEaHNwv/zUhN064Heih6QZtHB0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Reply-To:
 From:Date:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AUmF4XVY2ac5tTU3lr1LuXIlPx8+k+XB1+UmUGfJ3wM=; b=C
 K1HhyVW3ujpCOkT7hzuSAzN9uoND8vqCzUAVHyvaGjCg8BDi86QbT6Z0M1oQAd4+HJbFnjJTCzccZ
 Pc1FFZ3RVgWLYFXNjus07KAwy0pnKEeWdTbxDPFnPRCSuc92Dhc6fObgXj07xdRpPCHhzk2PuOrqa
 3tksKDRhDPrL5ovg=;
Received: from vtu.bg ([194.141.104.12] helo=websites2.vtu.bg)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lNrt8-008qU9-Vc
 for v9fs-developer@lists.sourceforge.net; Sun, 21 Mar 2021 06:48:46 +0000
Received: by websites2.vtu.bg (Postfix, from userid 5008)
 id 88DFF3007CA; Sun, 21 Mar 2021 08:53:35 +0200 (EET)
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 21 Mar 2021 08:53:35 +0200
Message-ID: <b20ee98ed13c1a0015db0530e9e548a7@tout.vtu.bg>
MIME-Version: 1.0
X-Spam-Score: 6.7 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: spainmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HK_LOTTO               No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.6 MONEY_NOHTML           Lots of money in plain text
 1.6 MONEY_FREEMAIL_REPTO   Lots of money from someone using free email?
 0.0 T_FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
 1.0 FORM_FRAUD             Fill a form and a fraud phrase
X-Headers-End: 1lNrt8-008qU9-Vc
Subject: [V9fs-developer] Hallo und Guten Morgen/was zu tun schnell,,
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
From: El Gordo de la primitiva lotterie spanien via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: europromo.es.spain@europemail.com
Cc: El Gordo de la primitiva lotterie spanien <support@tout.vtu.bg>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RWwgR29yZG8gZGUgbGEgcHJpbWl0aXZhICBsb3R0ZXJpZSBzcGFuaWVuICAgICAgICAgICAgICAg
ICAgICAgICAgCkFkcmVzc2U6Q2FsbGUgZGVsIFByw61uY2lwZSBkZSBWZXJnYXJhLCAzOCwgMjgw
MDEKTWFkcmlkIEVzcGHDsWFdICAgIApLb250YWt0IGF1Zm5laG1lbiB1bnRlcjpdIDM0NjAyIDgx
MCAxODUgZmF4IDM0OTM1NDU3NDkwXQpFLW1haWw6XWFuc3BydWNoZ2V3aW5uLm1tdC5lc0BzcGFp
bm1haWwuY29tXQoKQWt0ZW56ZWljaGVuOl1QMDkvMDEvMDIvMjAyMS5dCkxvc251bW1lcjpdIEVT
UCA0NDQ3LzExNDY0MTE4ODAyMDFdCkRhdHVtOiAxNi8wMy8yMDIxXQoKSGFsbG8sICAgICAgICAK
ICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBPRkZJWklFTExF
IE1JVFRFSUxVTkcsCkRpZXNlIEVsIEdvcmRvIGRlIGxhIFByaW1pdGl2YSBCb25hbnphICBMb3R0
ZXJpZSB3dXJkZSB1bmQgTWluaXN0ZXJpbyBkZSBJbmR1c3RyaWEsIENvbWVyY2lvIHkgVHVyaXNt
byAgZ2VzcG9uc2VydCB1bSBUb3VyaXNtdXMgaW4gU3BhbmllbiAgenUgZsO2cmRlcm4uCgpXaXIg
c2luZCBlcmZyZXV0IElobmVuIG1pdCB6dSB0ZWlsZW4sIGRhc3MgZGllIEdld2lubmVyIGRlcyBT
b25kZXIgU3BhbmlzaCBUb3VyaXNtdXMgUHJvbW90aW9uYWwgRHJhdyBiZWthbm50IGdlZ2ViZW4g
d29yZGVuIHNpbmQuIERpZSBvZmZpemllbGxlIExpc3RlIGRlciBHZXdpbm5lciAgZXJzY2hpZW4g
YW0gIFNhbXN0YWcgZGVyIDI3LzAyLzIwMjEuIAoKSWhyZSBlbWFpbCBhZHJlc3NlICBtaXQgZGVy
IGFuaMOkbmdlbmRlbiBMb3NudW1tZXI6IEVTUCA0NDQ3LzExNDY0MTE4ODAyMDEgIHVuZCBtaXQg
ZGVyIFNlcmllbm51bW1lcjogRVNQLzAxODgxMS0yMDIwIHpvZyBkaWUgR2zDvGNrc251bW1lcjog
Ni4xNi4xOC4zMy40Ny41MSBCb251OjI5LEVsIEdvcmRvIGRlIGxhIFByaW1pdGl2YSAgTG90dGVy
aWUgIDYgLzQ5IGluIGRlciAzLiBLYXRlZ29yaWUuCgpTaWUgc2luZCBkYW1pdCBnZXdpbm5lciB2
b246IOKCrDk5MSwwMDAuMDAgRXVyby4gRGllIFN1bW1lIGVyZ2lidCBzaWNoIGF1cyBlaW5lciBH
ZXdpbm5hdXNzY2jDvHR0dW5nIHZvbjog4oKsNjkzNywwMDAuMDAgRXVybywgZGllIGR1cmNoIGRp
ZSBlcnN0ZW4gc2llYmVuICg3KSBHZXdpbm5lciBhdXMgZGVyIGdsZWljaGVuIEthdGVnb3JpZSBn
ZXRlaWx0IHd1cmRlLiAgRGlyIGdld2lubiBpc3QgYmVpIGVpbmVyIHNpY2hlcmhlaXRzZmlybWEg
aGludGVybGVndCB1bmQgaW4gaWhyZW4gbmFtZW4vZW1haWwgIHZlcnNpY2hlcnQuIHVtIGtlaW5l
IGtvbXBsaWthdGlvbmVuIGJlaSBkZXIgYWJ3aWNrbHVuZyBkZXIgemFobHVuZyB6dSB2ZXJ1cnNh
Y2hlbiBiaXR0ZW4gd2lyIHNpZSBkaWVzZSBvZmZpemllbGxlIG1pdHRlaWx1bmcgLCBkaXNrcmV0
IHp1IGJlaGFuZGVsbi4sZXMgaXN0IGVpbiB0ZWlsIHVuc2VyZXMgc2ljaGVyaGVpdHNwcm90b2tv
bGxzIHVuZCBnYXJhbnRpZXJ0IGlobmVuIGVpbmVuIHJlaWJ1bmdzbG9zZW4gQWJsYXVmLgoKQWxs
ZSBnZXdpbm5lciB3dXJkZW4gcGVyIGNvbXB1dGVyIGF1cyBVcmxhdWJzaG90ZWxzLCBGbHVnZ2Vz
ZWxsc2NoYWZ0ZW4gdW5kIFJlaXNlYsO8cm9zIG1haWxlbiBEYXRlbiB2b24gZsO8bmYgTWlsbGlv
bmVuICg1MDAwMDAwKSBFbWFpbCBhZHJlc3NlbiBhdXNnZXfDpGhsdCwgYWxzIHRlaWwgdW5zZXJl
ciBJbnRlcm5hdGlvbmFsZW4gdG91cmlzbXVzIHByb21vdGlvbiBwcm9ncmFtbXMsIHdlbGNoZXMg
d2lyIGVpbm1hbCBpbSBqYWhyIHZlcmFuc3RhbHRlbiB1bSBUb3VyaXNtdXMgaW4gU3BhbmllbiB6
dSBmw7ZyZGVybi4KCkJpdHRlIGtvbnRha3RpZXJlbiBzaWUgdW5zZXJlbiBhdXNsYW5kcyBzYWNo
YmVhcmJlaXRlciBIZXJyIEdhYnJpZWwgIGJlaSBkZXIgc2ljaGVyaGVpdHNmaXJtYSBTYW50YWx1
Y2lhIFNpY2hlcmhlaXRzZmlybWE6UGVyIEVtYWlsIGFuOmV1cm9wcm9tby5lcy5zcGFpbkBldXJv
cGVtYWlsLmNvbSBvZGVyIGFucnVmZW46IDM0IDYwMiA4MTAgMTg1ICYgRmF4OiAgMzQgOTMxIDcw
IDIxMjAsIHVtIElociBHZWxkIHNjaG5lbGwgenUgYmVrb21tZW4uCgpEZW5rZW4gU2llIGRhcmFu
LCBqZWRlciBnZXdpbm5hbnNwcnVjaCBtdXNzIGJpcyB6dW0gMTMvMDQvMjAyMSBBbmdlbWVsZGV0
ZSBzZWluLiBKZWRlciBuaWNodCBhbmdlbWVsZGV0IEdld2lubmFuc3BydWNoIHZlcmbDpGxsdCB1
bmQgZ2VodCB6dXJ1Y2sgYW4gZGFzIFNwYW5pc2NoZSBTdGFhdHNrYXNzZS4KICAKV0lDSFRJRzog
dW0gdmVyesO2Z2VydW5nZW4gdW5kIGtvbXBsaWthdGlvbmVuIHp1IHZlcm1laWRlbiwgYml0dGUg
aW1tZXIgQWt0ZW56ZWljaGVuIGFuZ2ViZW4uICBBbmJlaSBlaW4gYW5tZWxkZWZvcm11bGFyLCBi
aXR0ZSBhdXNmw7xsbGVuIHVuZCB6dXLDvGNrIFBlciBlbWFpbCBhbjpldXJvcHJvbW8uZXMuc3Bh
aW5AZXVyb3BlbWFpbC5jb20gb2RlciBhbnJ1ZmVuOiAgMzQgNjAyIDgxMDE4NSAmIEZheDogIDM0
IDkzMSA3MCAyMTIwIGRpZSBzaWNoZXJoZWl0c2Zpcm1hIFNhbnRhbHVjaWEgU2ljaGVyaGVpdHNm
aXJtYS4KCkhFUlpMSUNIRU4gR0xVQ0tXVU5TQ0jigKYhCk1pdCBmcmV1bmRsaWNoZW4gR3LDvMOf
ZW4KTUFSSUEgSElEQUxHTwpWSVpFUFLDhFNJREVOVElOCgpCw5xSTyxTQU5UQUxVQ0lBIFNFR1VS
T1MgUy5BIEVzcGHDsWEgClBsYXphIEVzcGHDsWEsIDE1IC0gLTE2ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIApNYWRyaWQsIDI4MDA4IEVzcGHDsWEKICAgICAgICAgICAgICAgICAgICAgICAg
ICAKCkFOTUVMREVGT1JNVUxBUiBaVVIgR0VXSU5OQU5TUFJVQ0hTCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18gCkJpdHRlIGbDvGxsZW4gU2llIGRhcyBGb3JtdWxh
ciBzb3JnZsOkbHRpZyBhdXMgdW5kIHNlbmRlbiBlcyBwZXIgZSBtYWlsOnNhbnRhbHVjaWEuc2cu
ZXNAc3BhaW5tYWlsLmNvbSBhbiBkZXIgU2FudGFsdWNpYSBTaWNoZXJoZWl0c2Zpcm1hIG1pdCBL
b3BpZSBJaHJlcyBQZXJzb25hbGF1c3dlaXNlcyBvZGVyIFJlaXNlcGFzc2VzLgoKCkdFV0lOTkJF
VFJBRypfX19fX19fX19fQUtURU5aRUlDSEVOOipFU1AwOS8wMS8wMi8yMDIxCk5BTUU6Kl9fX19f
X19fX19fX19fX19fX19fVk9STkFNRToqX19fX19fX19fX19fX19fX19fX19fX18KR0VCVVJUU0RB
VFVNOipfX19fX19fX19fX19fX19fXypOQVRJT05BTEk6Kl9fX19fX19fX19fX19fX18KTE9TTlVN
TUVSKl9fX19fX19fX19fX19fX19fX19fX18qR0xVQ0tTWkFITEVOOipfX19fX19fX19fX18KU1RS
QVNTRSpfX19fX19fX19fX19fX19fX19fX19fX19fX19fKk5VTU1FUjoqX19fX19fX19fX19fX19f
CldPSE5PUlQqX19fX19fX19fX19fX19fX1BPU1RMRUlUWkFIKl9fX19fX19fX18qTEFORCpfX19f
X19fXwpURUxFRk9OKl9fX19fX19fX19fX0hBTkRZKl9fX19fX19fX19fX19GQVgqX19fX19fX19f
X19fX19fX18KQkVGVUYqX19fX19fX19fX0ZBTUlFTElFTlNUQU5EKl9fX19fX19fX19fX19fXyog
KEdFU0NITEVDSFQpCkVNQUlMKl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18qVW50ZXJzY2hyaWZ0Kl8KICAKCldFTENIRSBaQUhMVU5HU0ZPUk0gQkVWT1JaVUdFTiBTSUU/
ICAoQSkgQkFOS8OcQkVSV0VJU1VORzogIChCKSBCQVJTQ0hFQ0sgIApCQU5LREFURU4gU0lORCBO
VVIgTk9UV0VORElHIFdFTk4gU0lFIFNJQ0ggRsOcUiBFSU5FIEJBTkvDnEJFUldFSVNVTkcgRU5U
U0NISUVERU4gSEFCRU4uCgpOQU1FIERFUyBHRUxESU5TVElUVVRTOipfX19fX19fX19fX19fX19f
X19fX19fX19fXwpLT05UT05VTU1FUjoqX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTV0lGVCBDT0RFOipfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
QU5LIEFERFJFU1M6Kl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpURUxFRk9O
TlVNTUVSOipfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpGQVg6IE5VTU1FUjoq
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwoKCiAgICBFUktMw4RSVU5HIERF
UyBCRUfDnE5TVElHVEVOCklDSCBfX19fX19fX19fX19fX19fX19fX19fX19fX19CRVNUw4RUSUdF
IEhJRVJNSVQsIERBU1MgQUxMRSBJTkZPUk1BVElPTkVOLCBLT1JSRUtUIFNJTkQsIFVORCBESUUg
VkVSQU5TVEFMVEVSIERFUiBFbCBTUEFOSVNIIExPVFRFUlkgLyBTQU5UQUxVQ0lBIFNJQ0hFUkhF
SVRTRklSTUEgTklDSFQgVkVSQU5UV09SVExJQ0ggR0VNQUNIVCBXRVJERU4sIFdFTk4gRVMgWlUg
RUlORVIgVU5CRVJFQ0hUSUdURU4gWkFITFVORyBEVVJDSCBVTkdFTkFVRSBJTkZPUk1BVElPTkVO
LCBESUUgSUNIIElOIERJRVNFTSBGT1JNVUxBUiBBTkdFQkUgS09NTVQuREFTUyAxMCUgUFJPVklT
SU9OIERFUiBTQU5UQSBMVUNJQSBTRUNVUklUWSBDT01QQU5ZIEdFSD9SRU4sIFNPQkFMRCBTSUUg
SUhSRU4gR0VXSU5OIEZPTkRTIEVSSEFMVEVOLiBESUVTRSBaRUhOIFBST1pFTlQgV0VSREVOIElI
TkVOIFNPRk9SVCBaVVLDnENLR0VHRUJFTiwgU0lFIEVSSEFMVEVOIElIUkVOIEdFV0lOTiBBVUYg
SUhSRU0gS09OVE8uIChBQ0hUVU5HIFdpciBiaXR0ZW4gU2llLCBhdWYgZGllc2UgRS1NYWlsLUFk
cmVzc2UgenUgYW50d29ydGVuKHNhbnRhbHVjaWEuc2cuZXNAc3BhaW5tYWlsLmNvbSkgQsOcUk8t
S09OVE9JTkZPUk1BVElPTkVOLUlCQU4gRVMxNyAyMTAwIDU2MjQgMTEwMiAwMDExIDc3MTkgU1dJ
RlQgQ09ERTogQ0FJWEVTQkJYWFguICBLT05UT05BTUUsTEEgUExBQ0lUQSBERUwgTUlSQURPUiBT
LkwgU1BBSU4uClVyaGViZXJyZWNodMKpIDIwMjAtMjAyMSBNdWx0aS1TdGFhdCBMb3R0ZXJpZSBW
ZXJiYW5kLiBBbGxlIFJlY2h0ZQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
