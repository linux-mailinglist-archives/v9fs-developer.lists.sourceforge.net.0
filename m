Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B81B7EB19
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Sep 2025 14:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:To:Date:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dlpmeiSRPaNcgtydzXDtBX+NWywxOHieJizgy9zSCEM=; b=lAWeC5XU5M8BDYIKSu75PaML1/
	0KvdEMojDfLRRf0g0THjR5XVe8NQM0uHSNo6M/W55Uwb3lj1vZ4IhwpbzK1Sc57O2VWxYyj76q+MY
	qC4YPGfShf0JDxfn4GC+TivOAVEDxnM3UDU2Ob/ytT9RbReT72jJO8aGvdJIwR3nFGSE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uynah-00044H-PC;
	Wed, 17 Sep 2025 08:32:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brendon.roy@primefinix.com>) id 1uynae-00043B-RT
 for v9fs-developer@lists.sourceforge.net;
 Wed, 17 Sep 2025 08:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W6pc+5/xPhSbH0zr9bjAiMmMFYb2K/+gFLzIJwDWd9Q=; b=SJBzZh7lXO1Fl/zx9H4jMe1Cqi
 zAT6ioVvPFFiCL8r3dxs9BFvOch/jhh/V678U99JoKbPDHbDylCL5PTP1+UHznvC14kg4RVTZRQiH
 qhCcl6sQAkbbwtjJVNWLSOeNZDgS+sWF5SkFHUBP6cGTQAmJqwY9fi/9nrHrUZontT4E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=W6pc+5/xPhSbH0zr9bjAiMmMFYb2K/+gFLzIJwDWd9Q=; b=W
 aUTZJADhgGZP1v4JU60phZ88Fz+LZjZqwDCjYaN3rB4ZQMVHDUUEzklKgHz1CEbw5UCvONGjLfkdK
 IDUKOZufb4hO+k2/4Uu3DhqsBRlIk7Q0rGEBj6YxT0+lSDfyeb19pEbJ2IjVYxeHXkCjE7YL+TJoO
 UbK/Ln3/d4zfx7hs=;
Received: from mail.primefinix.com ([141.95.160.218])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uynae-0003wS-CD for v9fs-developer@lists.sourceforge.net;
 Wed, 17 Sep 2025 08:32:36 +0000
Received: by mail.primefinix.com (Postfix, from userid 1002)
 id 9E816A551D; Wed, 17 Sep 2025 10:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=primefinix.com;
 s=mail; t=1758097098;
 bh=W6pc+5/xPhSbH0zr9bjAiMmMFYb2K/+gFLzIJwDWd9Q=;
 h=Date:From:To:Subject:From;
 b=MxdsqIC4VO/IAmoRPFoxs9c5ZKIO7FI5FJMeM9/a9LU+NnMpgPYtD5pJ+6Iog8F5I
 HSJIqWQXb1LxT6nx7UqRO2zTCNPLmJzw51BvIeq0DdoTCUtwmMYqU5nZNg1EMDNAJm
 +nas4IEDcCdLRx9Cd/GC1rGAjNMAEs8hQFCH8X1h/Gwy3pxRDHOaHbtl6OfUhXptoy
 CkDi0kZibg+6FqUpUOGlrQkEMrA7oqxS8RWs/3qScwrRzvLJXeSSEV2binOT0eOnlT
 CtRd9dOSSqPEuAdq5RMqv/kI8ELfWKp1MNu1Ye6d5NuH3UV2lpxAmdIeA0dgLzCSc9
 thjN0UySg1O5g==
Received: by mail.primefinix.com for <v9fs-developer@lists.sourceforge.net>;
 Wed, 17 Sep 2025 08:15:06 GMT
Message-ID: <20250917084500-0.1.n0.3vm2e.0.qeqjnrj17q@primefinix.com>
Date: Wed, 17 Sep 2025 08:15:06 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.primefinix.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, I know you're probably bombarded with offers every day,
    so I'll get straight to the point – we have mattresses that are selling
    very well, so we're offering collaboration. We're looking for partners to
    work with us in a dropshipping model – no warehousing, no logistics, and
    customers receive their shipments directly from us. You focus solely on sales
    and margins. 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
X-Headers-End: 1uynae-0003wS-CD
Subject: [V9fs-developer] No stock, no hassle
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
From: Brendon Roy via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Brendon Roy <brendon.roy@primefinix.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgpJIGtub3cgeW91J3JlIHByb2JhYmx5IGJvbWJhcmRlZCB3aXRoIG9mZmVycyBldmVyeSBk
YXksIHNvIEknbGwgZ2V0IHN0cmFpZ2h0IHRvIHRoZSBwb2ludCDigJMgd2UgaGF2ZSBtYXR0cmVz
c2VzIHRoYXQgYXJlIHNlbGxpbmcgdmVyeSB3ZWxsLCBzbyB3ZSdyZSBvZmZlcmluZyBjb2xsYWJv
cmF0aW9uLgoKV2UncmUgbG9va2luZyBmb3IgcGFydG5lcnMgdG8gd29yayB3aXRoIHVzIGluIGEg
ZHJvcHNoaXBwaW5nIG1vZGVsIOKAkyBubyB3YXJlaG91c2luZywgbm8gbG9naXN0aWNzLCBhbmQg
Y3VzdG9tZXJzIHJlY2VpdmUgdGhlaXIgc2hpcG1lbnRzIGRpcmVjdGx5IGZyb20gdXMuIFlvdSBm
b2N1cyBzb2xlbHkgb24gc2FsZXMgYW5kIG1hcmdpbnMuCgpEb2VzIHRoaXMgc291bmQgaW50ZXJl
c3RpbmcgdG8geW91PwoKCkJlc3QgcmVnYXJkcwpCcmVuZG9uIFJveQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
