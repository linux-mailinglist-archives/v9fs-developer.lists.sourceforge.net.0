Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C95A69FA8B2
	for <lists+v9fs-developer@lfdr.de>; Mon, 23 Dec 2024 00:46:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tPVeq-00033E-57;
	Sun, 22 Dec 2024 23:46:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kurnia.adi@bakriemetal.co.id>) id 1tPVeE-00032g-Vx
 for v9fs-developer@lists.sourceforge.net;
 Sun, 22 Dec 2024 23:46:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ipDmw6IGyCmUdSTj9mEsA+MAAyjq24DELFxc2mGkfb0=; b=SdVRLQo0+d9e7IzIecb3MkCehn
 k7CHGW/8SJpfCf4L0eVL66fanplQYZcXBxRjmanDVV69nD8FCNhjodR4BPRk+z1IKY6rctYM2xWBm
 XYUIKrFZWDCoFXQKiwTki1rRepYCwM6xPRAuYWnpeuNAF+R8prbG5V99wDclLg090Gqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ipDmw6IGyCmUdSTj9mEsA+MAAyjq24DELFxc2mGkfb0=; b=P
 RrEWZfr6ecJ3qrdb/9H7+mni8KKC+CoBxNUISHAmjn1fd9kM24joyvh3k+gKRu6agWEEqd9QwIkmG
 PH5RAi2w9VqjVfOy0FeIpiG7jqEJ0+PEDrVFvK1TF6cBeSxyEc0yOeR4gn+kUkrnkuNjrvn+ho8TH
 IB2VGLSNxLtOAlKY=;
Received: from mailgate.bakrie.id ([203.153.122.134]
 helo=MAILGATE-OUT.bakrie.id)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tPVeD-0002ac-Ir for v9fs-developer@lists.sourceforge.net;
 Sun, 22 Dec 2024 23:46:11 +0000
Received: from MAILGATE-OUT.bakrie.id (MAILGATE-OUT.bakrie.id [127.0.0.1])
 by MAILGATE-OUT.bakrie.id (Proxmox) with ESMTP id 23011E0470
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 23 Dec 2024 06:33:18 +0700 (WIB)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 bakriemetal.co.id; h=cc:content-transfer-encoding:content-type
 :content-type:date:from:from:message-id:mime-version:reply-to
 :reply-to:subject:subject:to:to; s=mailgate; bh=ipDmw6IGyCmUdSTj
 9mEsA+MAAyjq24DELFxc2mGkfb0=; b=Gl/cybLTsChWDEIkt33F+GOQwIP4Xd7W
 DkUeGJ7WQ00BlOby7rSL4dDrX6tbCtjIR1jGaGnv3X+5DTfiqDvxYs1Nnk5voXUi
 miYgl6jR7aBLsQ7EYFmG474EaRlQTVQ0gTvx+NIVDjatAx+iGDM+lPxTvaZKmrpF
 QVavfnZtPEUqlThKdqE52DH1N5qC8ihL0NoIqmCBUx09Iu/I5Qn4u38+ZPvKoSda
 H+9UQRFT8Cd0Q8h+L7JtFrReQQ5HN3TeQJXWZXGp6MdQ/zYL/7GZzEBsUp8Mfohq
 s4oIodtodXxF1wc8r9ZD40giRvHcupo752VEzMCk0zeVYCQVQxiSWQ==
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.bakriemetal.co.id 878C919865FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bakriemetal.co.id;
 s=D48C7A6C-3384-11EA-BE28-77484C2186DE; t=1734829993;
 bh=ipDmw6IGyCmUdSTj9mEsA+MAAyjq24DELFxc2mGkfb0=;
 h=From:To:Date:Message-ID:MIME-Version;
 b=PAvIO72NZx25vUche+LM6OCHm7sePKoMO1VC0BeUbKw1dM0xF3WRmtXk0gIrRTd/c
 BUpRgpINUsQfMUWLO+3fkZsC1dcCx3tHVHUDouVDakCnHdKLtkqSZ59qNbS4HegFPU
 e+Z9/tX6DulBgyR7d4e15LSFLLfImAVXRFx8ZKSzv8sxzINhW+3s4Ei9/YkOzXUU79
 docp86gg8L8RLh3cWVk0bCmwC6dEaxt2aLqM4BTQEtyq27/GID3aSfHw7m5y7zXhgJ
 v89IGG9wPz/0o9RbsDg+t/dPNzKvJp2LOuQsRqUfB8oax5t9NjYoCwCecV0v9je+FC
 V6xnLAnNHaXkA==
X-Virus-Scanned: amavis at 
To: v9fs-developer@lists.sourceforge.net
Date: 21 Dec 2024 20:49:50 +0000
Message-ID: <20241221204950.589F76D1076EC89C@bakriemetal.co.id>
MIME-Version: 1.0
X-Spam-Score: 7.7 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  INTERNATIONAL LOTTERY AWARD PROMOTION PROFIT ALLOCATION DEPARTMENT
    ESPAÑA FILE NUMBER: ESP/7 7/EU REFERENCE NUMBER: OU/24/ES. E MAIL: iawardpromotion@gmail.com
    Mitteilung zur Auszahlung Ihres nicht beanspruchten Gewinns. 
 
 Content analysis details:   (7.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [203.153.122.134 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [203.153.122.134 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 LOTS_OF_MONEY          Huge... sums of money
  1.2 MONEY_NOHTML           Lots of money in plain text
  0.5 MONEY_FREEMAIL_REPTO   Lots of money from someone using free
                             email?
  1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
                             different freemails
  0.5 GB_FREEMAIL_DISPTO_NOTFREEM Disposition-Notification-To/From
                             contain different freemails but mailfrom
                             is not a freemail
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
  0.0 GB_FREEMAIL_DISPTO     Disposition-Notification-To/From or
                             Disposition-Notification-To/body contain
                             different freemails
  0.0 FILL_THIS_FORM         Fill in a form with personal information
  0.0 T_FILL_THIS_FORM_LOAN  Answer loan question(s)
  0.0 MONEY_FORM             Lots of money if you fill out a form
  0.0 T_FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
  1.2 ADVANCE_FEE_2_NEW_FRM_MNY Advance Fee fraud form and lots of
                             money
X-Headers-End: 1tPVeD-0002ac-Ir
Subject: [V9fs-developer] FILE NUMBER: ESP/7 7/EU REFERENCE NUMBER: OU/24/ES
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
From: =?UTF-8?B?UFJPRklUIEFMTE9DQVRJT04gREVQQVJUTUVOVCBFU1BBw5FB?= via
 V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: lawsuitchamber@aol.com
Cc: =?UTF-8?B?UFJPRklUIEFMTE9DQVRJT04gREVQQVJUTUVOVCBFU1BBw5FB?=
 <kurnia.adi@bakriemetal.co.id>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SU5URVJOQVRJT05BTCBMT1RURVJZIEFXQVJEIFBST01PVElPTgpQUk9GSVQgQUxMT0NBVElPTiBE
RVBBUlRNRU5UIEVTUEHDkUEgICAgICAgICAgICAgIApGSUxFIE5VTUJFUjogRVNQLzcgNy9FVQpS
RUZFUkVOQ0UgTlVNQkVSOiBPVS8yNC9FUy4KRSBNQUlMOiBpYXdhcmRwcm9tb3Rpb25AZ21haWwu
Y29tCgpNaXR0ZWlsdW5nIHp1ciBBdXN6YWhsdW5nIElocmVzIG5pY2h0IGJlYW5zcHJ1Y2h0ZW4g
R2V3aW5ucy4KCldpciBtw7ZjaHRlbiBTaWUgZGFyw7xiZXIgaW5mb3JtaWVyZW4sIGRhc3MgZGll
IApMb3R0ZXJpZWdlc2VsbHNjaGFmdCBpbiBTcGFuaWVuIHVuc2VyZSBBbndhbHRza2FuemxlaSBt
aXQgZGVyIApSZWNodHNiZXJhdHVuZyBiZWkgZGVyIEJlYXJiZWl0dW5nIHVuZCBBdXN6YWhsdW5n
IElocmVyIG5pY2h0IApiZWFuc3BydWNodGVuIEdld2lubmUgYmVhdWZ0cmFndCBoYXQsIGRpZSBJ
aHJlbSBOYW1lbiAKZ3V0Z2VzY2hyaWViZW4gd3VyZGVuIHVuZCBzZWl0IG1laHIgYWxzIHp3ZWkg
SmFocmVuIG5pY2h0IApiZWFuc3BydWNodCB3dXJkZW4uCgpEZXIgR2VzYW10YmV0cmFnLCBkZXIg
SWhuZW4genVzdGVodCwgYmV0csOkZ3QgZGVyemVpdCBTaWViZW4gCk1pbGxpb25lbiBBY2h0aHVu
ZGVydHNlY2hzdW5kendhbnppZ3RhdXNlbmQgRXVybwoKRGFzIHVyc3Byw7xuZ2xpY2hlIFByZWlz
Z2VsZCBiZXRydWcgVmllciBNaWxsaW9uZW4gCkbDvG5maHVuZGVydHZpZXJ6aWd0YXVzZW5kIFp3
ZWlodW5kZXJ0ZsO8bmZ1bmR6d2FuemlnIEV1cm8gCkRyZWl1bmRkcmVpw59pZyBDZW50LiBEaWVz
ZXIgQmVpdHJhZyB3dXJkZSBzZWl0IG1laHIgYWxzIHp3ZWkgCkphaHJlbiBpbnZlc3RpZXJ0LCBk
YWhlciBkaWUgRXJow7ZodW5nIGF1ZiBkZW4gb2JlbiBnZW5hbm50ZW4gCkdlc2FtdGJldHJhZy4g
TmFjaCBBbmdhYmVuIGRlcyBNaW5pc3RlcmlvIGRlIEhhY2llbmRhLgoKRGllc2VzIEdlbGQgd3Vy
ZGUgaW4gSWhyZW0gTmFtZW4gYWxzIG5pY2h0IGJlYW5zcHJ1Y2h0ZXIgCkxvdHRvZ2V3aW5uIGJl
aSBkZXIgc3BhbmlzY2hlbiBaZW50cmFsYmFuayBoaW50ZXJsZWd0IHVuZCBhdWYgCklocmVuIE5h
bWVuIHZlcnNpY2hlcnQuCgpXaWUgZGllIExvdHRlcmllZ2VzZWxsc2NoYWZ0IG1pdHRlaWx0ZSwg
c2VpIGlobmVuIGRhcyBHZWxkIG5hY2ggCmVpbmVyIFdlaWhuYWNodHNsb3R0ZXJpZS1Ba3Rpb24g
w7xiZXJnZWJlbiB3b3JkZW4uIE5hY2ggQW5nYWJlbiAKZGVyIExvdHRlcmllZ2VzZWxsc2NoYWZ0
IHd1cmRlIHNpZSBrb250YWt0aWVydCwgdW0gU2llIMO8YmVyIApkaWVzZXMgR2VsZCB6dSBpbmZv
cm1pZXJlbiwgYWJlciBsZWlkZXIgaGF0dGUgc2ljaCBiaXMgenVtIEVuZGUgCmRlciB2b3JnZWdl
YmVuZW4gWmVpdCBuaWVtYW5kIGdlbWVsZGV0LCB1bSBkZW4gR2V3aW5uIAplaW56dWZvcmRlcm4s
IHNvZGFzcyBkYXMgR2VsZCB6dXIgVmVyd2FsdHVuZyBoaW50ZXJsZWd0IHd1cmRlLgoKTmFjaCBz
cGFuaXNjaGVtIFJlY2h0IG11c3MgZGVyIEVpZ2VudMO8bWVyIGFsbGUgendlaSBKYWhyZSDDvGJl
ciAKZGVuIHZlcmbDvGdiYXJlbiBHZXdpbm4gaW5mb3JtaWVydCB3ZXJkZW4uIFdlbm4gZGFzIEdl
bGQgbmljaHQgCmVpbmdlZm9yZGVydCB3aXJkLCB3aXJkIGRlciBFaWdlbnTDvG1lciBiZW5hY2hy
aWNodGlndC4gRGVyIEdld2lubiAKd2lyZCDDvGJlciBlaW5lIEJldGVpbGlndW5nc2dlc2VsbHNj
aGFmdCBmw7xyIGVpbmVuIFplaXRyYXVtIHZvbiAKendlaSBKYWhyZW4gcmVpbnZlc3RpZXJ0LiBF
dXJvbWlsbGlvbmVuLiB3dXJkZW4gZGFoZXIgdm9tIApNaW5pc3RlcmlvIGRlIEhhY2llbmRhIGFu
Z2V3aWVzZW4sIElobmVuIHp1IHNjaHJlaWJlbi4KCkRpZXMgaXN0IGVpbmUgQmVuYWNocmljaHRp
Z3VuZyB6dXIgSW5hbnNwcnVjaG5haG1lIGRpZXNlcyBHZWxkZXMuIApXaXIgbcO2Y2h0ZW4gU2ll
IGRhcsO8YmVyIGluZm9ybWllcmVuLCBkYXNzIGRpZSBCYW5rIHZvciBkZXIgCsOcYmVyd2Vpc3Vu
ZyBkaWVzZXMgR2VsZGVzIGF1ZiBJaHIgS29udG8gSWhyZSBJZGVudGl0w6R0IHByw7xmZW4gdW5k
IApiZXN0w6R0aWdlbiBtw7ZjaHRlCgpXaXIgYmVyYXRlbiBTaWUgYmVpIGRlciBHZWx0ZW5kbWFj
aHVuZyBJaHJlcyBBbnNwcnVjaHMuCkJpdHRlIHdlbmRlbiBTaWUgc2ljaCBhbiBEUiBKT1NFIE1B
TlVFTCBGUkFOQ0lTQ08gUk9DQSwgVGVsLjogKzM0IAo2MTcgNTk2IDMxOCwuIEVyIHd1cmRlIGRh
bWl0IGJlYXVmdHJhZ3QsIElobmVuIGRhYmVpIHp1IGhlbGZlbiwgCklocmVuIEdld2lubiBlaW56
dWZvcmRlcm4KdW5kIGhlbGZlbiBJaG5lbiBhdWNoIGJlaSBkZXIgQWJ3aWNrbHVuZy4gRGVyIEFu
c3BydWNoIHNvbGx0ZSBiaXMgCnp1bSAzMC4wMS4yMDI1IGdlbHRlbmQgZ2VtYWNodCB3ZXJkZW4s
IGFuZGVybmZhbGxzIHdpcmQgZGFzIEdlbGQgCnJlaW52ZXN0aWVydC4gV2lyIGZyZXVlbiB1bnMg
ZGFyYXVmLCBzY2huZWxsc3Rtw7ZnbGljaCB2b24gSWhuZW4gCnp1IGjDtnJlbiB1bmQgdmVyc2lj
aGVybiBJaG5lbiB1bnNlcmUgcmVjaHRsaWNoZSBVbnRlcnN0w7x0enVuZy4KCgpCaXR0ZSBmw7xs
bGVuIFNpZSBkZW4gZm9sZ2VuZGVuIEFic2Nobml0dCBhdXMgdW5kIHNlbmRlbiBTaWUgaWhuIApw
ZXIgRS1NYWlsIGFuIHVuc2VyIELDvHJvOiBsYXdzdWl0Y2hhbWJlckBhb2wuY29tIGRhbWl0IHdp
ciBJaHJlbiAKR2V3aW5uIHVuZCBkYXMgR2VsZCBiZWFyYmVpdGVuIGvDtm5uZW4Kd2lyZCBJaG5l
biB2b24gZGVyIEludGVybmF0aW9uYWwgTG90dG8gSW52ZXN0bWVudCBCYW5rIAphdXNnZXphaGx0
LiBEZXIgVmVyaWZpemllcnVuZ3Nwcm96ZXNzIGR1cmNoIHVuc2VyZSBBbndhbHRza2FuemxlaSAK
YmV0csOkZ3QgMTAgJSBJaHJlcyBHZXdpbm5zLgogICAgICAgICAgIAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAg
ICAgICAgICAgICAKRklSU1ROQU1FOi4uLi4uLi4uLi4uLi4gCi4uLi4uLi4uLi4uLi4uLi4uLlNV
Uk5BTUUuLi4uLi4uLi4uLi4uLi4uLiAKLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLgoKUkVGRVJFTkNFIApOVU1CRVI6Li4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLgouLi4uLi4uLkFERFJF
U1MuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4KClBIT05FOi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4gLi4uLi4uLi5NT0JJTEUgCk5POi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uIEZBWC4uLi4uLi4uLi4uLi4uLi4uLi4uIAouLi4uLi4uLi4uLi4u
Li4KCkRBVEUgT0YgQklSVEguLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gCi4uLi4uLlBS
T0ZFU1NJT04uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiAKLi5OQVRJT05BTElU
WS4uIC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLgoKQkFOSyBOQU1FOi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uIApJQkFOOi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uIC4uLi4uLi4uLi4uLi4gQklDOiAKLi4uLi4uLi4uLi4uLi4uLi4uLi4u4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCmLgoKRS1tYWlsOi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gClNJR05BVFVSRSBEQVRFOuKApi4uLi4uLi4uLiAuLi4g
Li4uLi4uLi4uLi4gREFURTrigKYgCi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiAuLi4u
LgoKU29sbHRlIHNpY2ggSWhyZSBBZHJlc3NlIMOkbmRlcm4sIGluZm9ybWllcmVuIFNpZSBJaHJl
biAKU2NoYWRlbnNyZWd1bGllcmVyIGF1cyBTaWNoZXJoZWl0c2dyw7xuZGVuIHNvIHNjaG5lbGwg
d2llIG3DtmdsaWNoLiAKTm9jaG1hbHMgaGVyemxpY2hlbiBHbMO8Y2t3dW5zY2ggaW0gTmFtZW4g
dW5zZXJlciBNaXRhcmJlaXRlciB1bmQgCnZpZWxlbiBEYW5rIGbDvHIgZGllIFRlaWxuYWhtZSBh
biB1bnNlcmVtIGrDpGhybGljaGVuIAppbnRlcm5hdGlvbmFsZW4gV2VyYmVwcm9ncmFtbS4KCklD
SCwgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19FUktMw4RSRSAKSElFUk1JVCwgREFTUyBESUUgT0JFTiBHRU5BTk5URU4gREFURU4gV0FIUiBT
SU5EIFVORCBJQ0ggSU0gRkFMTEUgCkVJTkVSIEbDhExTQ0hVTkcgREVOIEdFU0FNVEVOIEFOU1BS
VUNIIEFVRiBERU4gR0VXSU5OQkVUUkFHIApWRVJMSUVSRS4gSU0gRkFMTEUgVU5WT1JIRVJHRVNF
SEVORVIgVU1TVMOETkRFIEhBQkVOIE1FSU5FIApOw4RDSFNURU4gQU5HRUjDllJJR0VOIERBUyBS
RUNIVCwgSU4gTUVJTkVNIE5BTUVOIERFTiBHRVNBTVRFTiAKQkVUUkFHIEVJTlpVRk9SREVSTi4g
SUNIIEJFVk9MTE3DhENIVElHRSBISUVSTUlUIE1FSU5FTiAKQUxMRUlOVkVSVFJFVEVSLCBSRUNI
VFNBTldBTFQgSk9TRSBNQU5VRUwgRlJBTkNJU0NPIFJPQ0EgLCBJTiAKTUVJTkVNIE5BTUVOIFpV
IEhBTkRFTE4gVU5EIERJRSBBVVNaQUhMVU5HIE1FSU5FUyBHRVNBTVRFTiAKR0VXSU5OQkVUUkFH
UyBBTiBNSUNIIFpVIFZFUk1JVFRFTE4uIFVORCBJQ0ggU1RJTU1FIEFVQ0ggWlUsIDUlIApNRUlO
RVMgR0VXSU5OUyBBTiBSRUNIVFNBTldBTFQgSlVBTiBDQVJMT1MgUk9EUklHVUVaIFpVIFpBSExF
TiwgCk5BQ0ggRVJIQUxUIERJRVNFUyBHRUxELgoKw5ZmZm5lbiBTaWUgZGVuIG9iaWdlbiBBbmhh
bmcsIGRydWNrZW4gU2llIGRlbiBPcmlnaW5hbGJyaWVmIGF1cywgCmbDvGxsZW4gU2llIGRhcyBG
b3JtdWxhciB6dXIgWmFobHVuZ3NhYndpY2tsdW5nIGF1cyB1bmQgZmF4ZW4gU2llIAplcyB6dXLD
vGNrLgoKQmVzdCBSZWdhcmQsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIApEci4gR29tZXogUGVyZXogQW50b25pbyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAg
ICAgICAgICBBbm5hLU1hcmlhIFBvc2VuZXIgRGlvcwooVmVyd2FsdHVuZyBEaXJla3RvcikgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAg
ICAgICAgICAgICggU2VjcmV0YXJpbykKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
