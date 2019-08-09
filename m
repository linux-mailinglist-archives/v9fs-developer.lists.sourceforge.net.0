Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D742B872FB
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Aug 2019 09:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:To:Date:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4gzfL6YHAF/i0nsbsOi4MCyygO51SOpgsLqo/L6y2IY=; b=DWY5r5jc0DDLgTLa3WcwtA09Dp
	m5e4K9ZayXVLY/qve4KJ5cih3jnBJA1nAmuw69XJGh2B16X8soUy5OPxFvLYUmp5e6OhUyk6tZQOq
	eZr+lCHba/JGQo8xHeP1YABxRDkkGZzNtokqsGUhmCQrecfxrZRGpi1a63SFploMgPlw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hvzMS-0000gm-10; Fri, 09 Aug 2019 07:30:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kamil.adamec@automatics-control.eu>)
 id 1hvzMQ-0000gZ-Ub
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Aug 2019 07:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NjLcrs3cCMbbo+n0H6fjGJqdIYCaDUtkMzaQjEdJoS8=; b=XU/IX229eoh0tlGOnCeCjA3gmO
 jbhQo56ISgZz+GWps0udlDoi4RqvQbnFDf4k67hgLcl7DSzWcakl8uVQhwOOvtwkDnrgJHwTMttvI
 gePaGctWG1tA+Cop1x+nwJvq2rEhAcg9pNtQU8R3K8YSP8UkGUrI06OFFnfgAq99TlGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NjLcrs3cCMbbo+n0H6fjGJqdIYCaDUtkMzaQjEdJoS8=; b=b
 K30XYjWP5FmFchB2aw04FwgKyAQX87G1K7Tqaq/8mUTSCF3y35RQ+Y4XcLMlunDX+48Uqa+jwZ/6o
 cBCJiMOeb//mojbPC9WI/4wBeaD4lv4TZk7PKbBdf1Fd5zQGrjq36Ix7aScDrmCNpfMOlS2Q4g+EN
 3c84KQVfwHLT+a5g=;
Received: from mail.automatics-control.eu ([80.211.144.215])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvzMO-00Fgbu-TV
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Aug 2019 07:30:50 +0000
Received: by mail.automatics-control.eu (Postfix, from userid 1001)
 id DC077A1ECA; Fri,  9 Aug 2019 09:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=automatics-control.eu; s=mail; t=1565335841;
 bh=NjLcrs3cCMbbo+n0H6fjGJqdIYCaDUtkMzaQjEdJoS8=;
 h=Date:From:To:Subject:From;
 b=VuyqL7CSSRW7N1oCiH/hk375U9C5coNxntI1USSKahlcuYyGGBSSiO8yDwt+NqVeP
 dZMr0AxB29FuUC0Cqwy/F2VYiIt6yH8reuPvr00Ud9EAyKlapKGlhizKG2AGxfL/a6
 p77uJ1Kcit0elvG7vlYLrLYf+0OlOm3EEv+tWF9E=
Received: by mail.automatics-control.eu for
 <v9fs-developer@lists.sourceforge.net>; Fri,  9 Aug 2019 07:30:32 GMT
Message-ID: <20190809084500-0.1.j.1wx9.0.h6tpfkfa9c@automatics-control.eu>
Date: Fri,  9 Aug 2019 07:30:32 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.automatics-control.eu
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: automatics-control.eu]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.9 SPF_HELO_SOFTFAIL      SPF: HELO does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1hvzMO-00Fgbu-TV
Subject: [V9fs-developer] =?utf-8?b?RG9kYXRlxI1uw6kgemRyb2pl?=
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
From: Kamil Adamec via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Kamil Adamec <kamil.adamec@automatics-control.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9icsO9IGRlbiEKCsW9aXZub3N0bsOta8WvbSDEjWFzdG8gc3RvasOtIHYgY2VzdMSbIGsgZG9z
YcW+ZW7DrSDDunNwxJtjaHUgbsOtemvDoSDDunJvdmXFiCBwcm92b3puw61jaCB6ZHJvasWvIG5h
IG7DoWt1cCBtYXRlcmnDoWx1LCB6Ym/FvsOtIG5lYm8gc3Vyb3ZpbiB6IGTFr3ZvZHUgbmFwxZku
IG5lemFwbGFjZW7DrSBmYWt0dXIgKG5lemFwbGFjZW7DrSBvZCBkb2RhdmF0ZWzFrywgcHJvZGxv
dcW+ZW7DoSBzcGxhdG5vc3QgYXBvZC4pLiBWIHTDqXRvIG9ibGFzdGkganNtZSBqacW+IHBvbW9o
bGkgxZlhZMSbIGZpcmVtLCBrdGVyw6kgbW9obHkgZMOta3kgesOtc2vDoW7DrSBuw6F2cmF0bsOp
aG8gZmluYW5jb3bDoW7DrSByZWFsaXpvdmF0IHN2w6kga2zDrcSNb3bDqSBwbMOhbnkuCgpKc2Vt
IHBhcnRuZXJlbSBtbm9oYSBzcG9sZcSNbm9zdMOtLCBqZWppY2jFviDEjWlubm9zdCBqZSBzcm92
bmF0ZWxuw6EgcyB0b3UgVmHFocOtIGEgemEga29vcGVyYWNpIHMgbsOhbWkgesOtc2vDoXRlIGJv
bnVzIC0gcnljaGzDqSBzcGxhY2Vuw60gdmUgdsO9xaFpIGHFviA0IHNwbMOhdGVrLgoKRG92b2x0
ZSwgYWJ5Y2hvbSBWw6FzIGtvbnRha3RvdmFsaSB6YSDDusSNZWxlbSBwcm92ZWRlbsOtIGFuYWzD
vXp5IG1vxb5ub3N0w60gcG9tb2NpIGZpbmFuY292w6Fuw60uIEtkeSBieWNoIG1vaGwgemF2b2xh
dD8KCgpTIHBvemRyYXZlbQpLYW1pbCBBZGFtZWMKQWNjb3VudCBNYW5hZ2VyCnd3dy5hdXRvbWF0
aWNzLWNvbnRyb2wuZXUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
