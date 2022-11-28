Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A90BF63AD19
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Nov 2022 16:57:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ozgW1-0008JZ-EV;
	Mon, 28 Nov 2022 15:57:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@wp-jewely.com>) id 1ozgVz-0008HG-JO
 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 15:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wgMCWGTeiSG3xM9LDwplxAHYAlXn4jCgqYN1kdBh+ZA=; b=XQmVI7tpFAbJvtQSK9c3OmKEUc
 Caz9UKYhsxqcEKbWhHyQkkwD2om/8GTZ9F4f3w/nnmQPuo3DQsqMfMdbLBxTZXUIzJOglVzUghiUl
 Hu9ZwSKWSq1FC+ItIQ1FJx84LLP0DUcwVWRhQei4NUfmtFOfdvMO7YTZfuDVaLnfMTkw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wgMCWGTeiSG3xM9LDwplxAHYAlXn4jCgqYN1kdBh+ZA=; b=l
 9/NMrVIPLtSgkKf4KkTmNAFgg8j8yZjNhNuuGvdXO4c2LtladtG7UEVKlQTEESVAWBrwsyoAqJ8j+
 YaYm9QrO5yYzti1jhgTBXNpH4+AGgMqPs1vckLkN3+51GJEQJcnQNeUSJwEfX8UHrxri3kVVJ3Uja
 itiRNZTdtoSqYFnE=;
Received: from os3-308-43743.vs.sakura.ne.jp ([49.212.208.247])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1ozgVv-00GklV-P6 for v9fs-developer@lists.sourceforge.net;
 Mon, 28 Nov 2022 15:57:50 +0000
Received: by os3-308-43743.vs.sakura.ne.jp (Postfix, from userid 1000)
 id EB94B1170DF; Tue, 29 Nov 2022 00:47:29 +0900 (JST)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 1000:phpyouju.php
Date: Mon, 28 Nov 2022 23:47:29 +0800
From: =?UTF-8?B?5qW95aSp44Kw44Or44O844OX44GL44KJ44Gu44GK55+l44KJ44Gb?=
 <info@wp-jewely.com>
Message-ID: <3355a4b19caa231660ca9c31a3a9d05d@49.212.208.247>
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ＊本メールは、重要なお知らせのため、楽天会員情報の連絡先として登録されているメールアドレスにお送りしております。
    *This email is an important an [...] 
 
 Content analysis details:   (1.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1ozgVv-00GklV-P6
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5qW95aSp5Lya5ZOh6KaP57SE44CN5pS55a6a?=
 =?utf-8?b?44Gu44GK55+l44KJ44GbL1JldmlzaW9uIG9mICdSYWt1dGVuIE1lbWJlcnNo?=
 =?utf-8?q?ip_Rules=27?=
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

CgoKCgoKICAKICAKICAgIAogICAgICAKICAgICAgICAKICAgICAgICAKICAgICAgICAgICAKICAg
ICAgICAgIAoKICAKICAKICAgIAogIAogICAgCiAgICAgIO+8iuacrOODoeODvOODq+OBr+OAgemH
jeimgeOBquOBiuefpeOCieOBm+OBruOBn+OCgeOAgealveWkqeS8muWToeaDheWgseOBrumAo+e1
oeWFiOOBqOOBl+OBpueZu+mMsuOBleOCjOOBpuOBhOOCi+ODoeODvOODq+OCouODieODrOOCueOB
q+OBiumAgeOCiuOBl+OBpuOBiuOCiuOBvuOBmeOAggogICAgICAqVGhpcyBlbWFpbCBpcyBhbiBp
bXBvcnRhbnQgYW5ub3VuY2VtZW50IGZyb20gUmFrdXRlbiBhbmQgaXMgc2VudCB0byAKICAgICAg
YWxsIFJha3V0ZW4gbWVtYmVycycgcmVnaXN0ZXJlZCBlbWFpbCBhZGRyZXNzZXMuCiAgICAgICpF
bmdsaXNoIGZvbGxvd3MgSmFwYW5lc2UuIAogICAgICAKCiAgICAgIOalveWkqeOCsOODq+ODvOOD
l+agquW8j+S8muekvuOBr+OAgTExLzI4LzIwMjIgMTE6NDc6MjkgcG3CoOalveWkqeW4guWgtCAK
ICAgICAg44Gr55m76Yyy44GE44Gf44Gg44GE44Gf44GK5a6i5qeY44Gr44CB5qW95aSp5biC5aC0
IOOCouOCq+OCpuODs+ODiOOBruaDheWgseabtOaWsOOCkuOBiuWxiuOBkeOBl+OBvuOBmeOAguau
i+W/teOBquOBjOOCieOAgSDmpb3lpKnluILloLTjga7jgqLjgqvjgqbjg7Pjg4jjgpLmm7TmlrDj
gafjgY3jgb7jgZvjgpPjgafjgZfjgZ/jgIIKICAgICAg4pag5LuK5Zue44Gv44CB44Kr44O844OJ
44GM5pyf6ZmQ5YiH44KM44Gr44Gq44Gj44Gm44KL44GL44CB6KuL5rGC5YWI5L2P5omA44GM5aSJ
5pu044GV44KM44Gf44Gq44Gp44CB44GV44G+44GW44G+44Gq55CG55Sx44Gn44Kr44O844OJ44Gu
5oOF5aCx44KS5pu05paw44Gn44GN44G+44Gb44KT44Gn44GX44Gf44CCCiAgICAgIAogICAgICAK
ICAgICAgICDjgqLjgqvjgqbjg7Pjg4jmg4XloLHjga7kuIDpg6jjgYzoqqTjgaPjgabjgYTjgovm
lYXjgavjgIEgCiAgICAgICAg44GK5a6i5qeY44Gu44Ki44Kr44Km44Oz44OI44KS57at5oyB44GZ
44KL44Gf44KBIOalveWkqeW4guWgtCDjgqLjgqvjgqbjg7Pjg4jjga4g5oOF5aCx44KS56K66KqN
44GZ44KL5b+F6KaB44GM44GC44KK44G+44GZ44CCCiAgICAgIAogICAgICDjgarjgYrjgIHmlLnl
rprjga7oqbPntLDjga/kuIvoqJjjga7jg5rjg7zjgrjjgavjgabjgZTnorroqo3jgYTjgZ/jgaDj
gZHjgb7jgZnjgILjgIzjg63jgrDjgqTjg7Pjga/jgZPjgaHjgonjgI0KICAgICAg5LuK5b6M44Go
44KC5qW95aSp44Gu44K144O844OT44K544KS44GU5Yip55So44Gu56iL44CB44KI44KN44GX44GP
44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCCiAgICAgIAoKICAgICAgW0VuZ2xpc2ggdmVyc2lv
bl0KICAgICAgVGhhbmsgeW91IGZvciBhbHdheXMgdXNpbmcgUmFrdXRlbiBzZXJ2aWNlcy4gV2Ug
CiAgICAgIHdvdWxkIGxpa2UgdG8gYW5ub3VuY2UgdGhhdCBSYWt1dGVuIEdyb3VwLCBJbmMuIGhh
cyBkZWNpZGVkIHRvIHBhcnRpYWxseSAKICAgICAgcmV2aXNlIHRoZSBSYWt1dGVuIE1lbWJlcnNo
aXAgUnVsZXMgZWZmZWN0aXZlIFR1ZXNkYXksIEphbnVhcnkgMTcsIAogICAgICAyMDIzLgogICAg
ICDilqBQYXJ0cyB0byBiZSBDaGFuZ2VkCiAgICAgIAogICAgICAKICAgICAgICBXZSB3aWxsIGlu
Y2x1ZGUgZXhhbXBsZXMgb2YgbWVhc3VyZXMgdG8gdGFrZSB0byBwcm90ZWN0IHlvdXIgQWNjb3Vu
dCAKICAgICAgICAoQXJ0aWNsZSAzKSAKICAgICAgICBXZSB3aWxsIGFkZCBwcm9oaWJpdGVkIGFj
dGl2aXRpZXMgKEFydGljbGUgOCkKICAgICAgCiAgICAgIFBsZWFzZSBmaW5kIG1vcmUgZGV0YWls
cyBvZiB0aGUgcmV2aXNpb24gaW4gdGhlIHBhZ2UgYmVsb3cuUmV2aXNpb24gb2YgJ1Jha3V0ZW4g
TWVtYmVyc2hpcCBSdWxlcycgCiAgICAgIEFubm91bmNlbWVudAogICAgICBUaGFuayB5b3UgZm9y
IHlvdXIgY29udGludW91cyBzdXBwb3J0LCBhbmQgd2UgaG9wZSB0aGF0IHlvdSBjb250aW51ZSB0
byAKICAgICAgZW5qb3kgdXNpbmcgUmFrdXRlbiBzZXJ2aWNlcyBpbiB0aGUgZnV0dXJlLiAKCiAg
CiAgCiAgICAKICAKICAgIOOBk+OBruODoeODvOODq+OCkuawl+OBq+WFpeOBo+OBpuOBhOOBn+OB
oOOBkeOBvuOBl+OBn+OBi++8nwogIAogICAgCiAgICAgIAogICAgICAgIAogICAgICAgICAgIAog
ICAgICAgICAgIAogICAgICAgICAgIAogICAgICAgICAgIAogICAgICAgICAgIAogICAgICAgICAg
IAogIAogICAgCiAgICAgIAogICAgICAgIAogICAgICAgIAogICAgICAgICAg5rCX44Gr5YWl44KJ
44Gq44GEdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0wqAKICAgICAgICAgIOaw
l+OBq+WFpeOBo+OBnwogIAogICAgCgogIAogIAogICAgCiAgICAgIAogICAgICAgIAogICAgICAg
IAogICAgICAgICAgCiAgICAgICAgICAKICAgICAgICAgICAgCiAgICAgICAgICAgICAgCiAgICAg
ICAgICAgICAgCiAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAg
ICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAKICAg
ICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAg
ICAgICAgICDilqDmnKzjg6Hjg7zjg6vjga/jgIHpgIHkv6HlsILnlKjjg6Hjg7zjg6vjgqLjg4nj
g6zjgrnjgYvjgonphY3kv6HjgZXjgozjgabjgYrjgorjgb7jgZnjgILjgZTov5Tkv6HjgYTjgZ/j
gaDjgYTjgabjgoLjgYrnrZTjgYjjgafjgY3jgb7jgZvjgpPjga7jgafjgIHjgYLjgonjgYvjgZjj
goHjgZTkuobmib/jgY/jgaDjgZXjgYTjgILilqBUaGlzIGVtYWlsIGFjY291bnQgaXMgdXNlZCBm
b3Igc2VuZGluZyAKICAgICAgICAgICAgICAgICAgICAgICAgZW1haWxzIG9ubHksIGFuZCB3ZSBh
cmUgdW5hYmxlIHRvIHJlY2VpdmUgYW55IAogICAgICAgICAgICAgICAgICAgICAgICByZXBsaWVz
LgogICAgICAgICAgICAgICAgICAgICAgICDkuIfkuIDjgIHmpb3lpKnkvJrlk6HjgavnmbvpjLLj
gZfjgZ/opprjgYjjgYzjgarjgYTjgajjgYTjgYbloLTlkIjjga/jgIHjg5jjg6vjg5fjgpLjgZTo
pqfjgY/jgaDjgZXjgYTjgIJJZiB5b3UgZG8gbm90IHJlbWVtYmVyIHJlZ2lzdGVyaW5nIGFzIGEg
CiAgICAgICAgICAgICAgICAgICAgICAgIFJha3V0ZW4gbWVtYmVyLCBwbGVhc2UgcmVmZXIgdG8g
dGhlIEhlbHAgCiAgICAgICAgICAgICAgICAgICAgICAgIHBhZ2UuIAogICAgICAgICAgICAgICAg
ICAgIAogICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgCiAgICAgICAg
ICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAg5YCL5Lq65oOF5aCx5L+d6K23
5pa56YedIOKUgiDjg5jjg6vjg5fjg7vllY/jgYTlkIjjgo/jgZsgCiAgICAgICAgICAgICAgICAg
ICAgICAgIOeZuuihjOWFg++8miDmpb3lpKnjgrDjg6vjg7zjg5fmoKrlvI/kvJrnpL4gCiAgICAg
ICAgICAgICAgICAgICAgICAgIChjKSBSYWt1dGVuIEdyb3VwLCBJbmMuIAogICAgICAgICAgICAg
ICAgICAgIAogICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgCiAgICAgICAgICAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
