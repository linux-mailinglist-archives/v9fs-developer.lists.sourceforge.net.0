Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CF525F292
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Sep 2020 06:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
	Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nwo0X156T0Q2FSopYLm67hKWR1hBTtaQdRQacHZrmr4=; b=LJV806ciwuwBajby06kUWNk3aV
	AWP3Jux/JLgTQQeoYRaWNmAt3BIdtL/5iTrIn15KRGJmFnwTVH9e3Cqso4y3i97Rry/b1+TqvnkHH
	MqYuKQykX/7gQH21ayDG3kk6hKH95VzzsN5Ek8nqZymbqfe4mf+pSzIDBhvvpr7EOaKg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kF97K-0003ru-8i; Mon, 07 Sep 2020 04:50:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@unituscapital.com>) id 1kF97I-0003rj-BP
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Sep 2020 04:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tK55sY25oFpEFreA6+xE14OTmX0uTEOd+E3SPUsSEtI=; b=blTepOy6Y8wt4f+RoXSYwruJsC
 zFF64HqL63JmLAsN1A2VaA23lbN1bjuIEv/9GMkihVDkYG6fnqKoJVn2Nxmd20CpZMBP8SHV6DYZA
 C0w+YtbPYv85fRdZwzgJbDzI0t4ddYHCdEz6uP6/FTHZI/J6Lg6L5yPlrMBK0RVXEGPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tK55sY25oFpEFreA6+xE14OTmX0uTEOd+E3SPUsSEtI=; b=ZJ/xCZWaVTdafV3fjl/fIFcPgr
 s9nBX3D4f2TXsEK4y8y5n7byJlNtOBfrYk1w5gGMg0DKlSsWXit5MGCRO8ta32epOQsj7Wfv2bhzh
 YfObz7HLjI56gncKbLHHN6xl+f1EsPgLb3SOm2PwTpLorp1Lv30xJLtUG7BJm2jzOOPs=;
Received: from [165.22.66.44] (helo=mail.seen.ps)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kF97D-00EzUW-AQ
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Sep 2020 04:50:56 +0000
Received: from [192.168.8.10] (ip168-243-231-195.intercom.com.sv
 [168.243.231.195])
 by mail.seen.ps (Postfix) with ESMTPA id 36BC6F7366
 for <v9fs-developer@lists.sourceforge.net>;
 Mon,  7 Sep 2020 07:42:07 +0300 (IDT)
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 06 Sep 2020 22:42:04 -0600
X-Spam-Score: 7.5 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [165.22.66.44 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (andrewmacklin12[at]gmail.com)
 1.0 MISSING_MID            Missing Message-Id: header
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1kF97D-00EzUW-AQ
Subject: [V9fs-developer] GREETINGS TO YOU.
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
From: Angel Investors via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: andrewmacklin12@gmail.com
Cc: Angel Investors <info@unituscapital.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1kF97K-0003ru-8i@sfs-ml-4.v29.lw.sourceforge.com>

QXR0ZW50aW9uIFRvIEVtYWlsIDogdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Ckdvb2QgRGF5IFNpciwKT3VyIEdyb3VwIGhhdmUgdGhlIGZpbmFuY2lhbCBjYXBhYmlsaXR5IHRv
IGZpbmFuY2UgYW55IGludmVzdG1lbnQgcG9ydGZvbGlvIGFzIGZhciBhcyBpcyBnZW51aW5lLCBh
bGwgd2UgbmVlZCBpcyBhIGNhcGFibGUgYnVzaW5lc3MgcGFydG5lciB0aGF0IHBvc3Nlc3NlcyBp
bnZlc3RtZW50IHN0cmF0ZWdpZXMgZm9yIHByb2ZpdGFibGUgYnVzaW5lc3MgaW5mb3JtYXRpb24g
Zm9yIGdvb2QgdHVybiBvdmVyIHdpdGhpbiAxMC0zMHllYXJzLiBPdXIgUGFydG5lcnMgYXJlIHdp
bGxpbmcgdG8gaW52ZXN0IDEwbWlsbGlvbiDigJQgNWJpbGxvbiBVU0QuIFdlIGNhbiBwcm92aWRl
IHByb29mIG9mIGZ1bmRzIG9uIGRlbWFuZCwgYWZ0ZXIgY2VydGlmaWNhdGlvbiBvZiB5b3VyIGRv
Y3VtZW50cy9kZXRhaWxzLiBQbGVhc2Ugd3JpdGUgbWUgYmFjayBpZiB5b3UgY2FuIHdvcmsgd2l0
aCBtZSBvbiB0aGlzIHByb2plY3QuIFRoYW5rIFlvdSwKQmVzdCBSZWdhcmRzCkFuZHJldyBNYWNr
bGluCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
