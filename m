Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C60442BDD
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 11:52:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhrOg-00083L-TG; Tue, 02 Nov 2021 10:52:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mhrOf-0007rs-7i
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 10:52:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/+rgwyKj69Vlkv0On+QcUYGVMOPrFUm5qkV/iCdjSuE=; b=jExmsce45BcY0cKYciD5nV9mOh
 dxvBxjSaBA6f8UmXl2+AvAskIetijlHFIt970NfBkRlbaqF8/pH+R3rSpfTmb5ZX06BagLRbr8nKh
 Nf86N9pPruQl4KSYEhdgJjYnZ9GDOs+6/jMfUmOz8aPHXiaerjBB5bkBp77zb1Xi3GcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/+rgwyKj69Vlkv0On+QcUYGVMOPrFUm5qkV/iCdjSuE=; b=Vtb4EAShvIRO3xv1dhpaL6ZtnY
 9JuqvoqAfCJTMocanYHi4+nMZtvpecC3zrRjxV1LJ+u3Z1DDWSdWp/Rl1juew5BvYPYkQbxHgX5pb
 vW6I52MejzlF8RbwwycyC1HiLN/8Gq/6aucKMFCgkhCDjb0J/g3n5GmsFJY2CI+gL7YU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhrOa-00Em9I-Ut
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 10:52:03 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 58D6AC020; Tue,  2 Nov 2021 11:51:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635850314; bh=/+rgwyKj69Vlkv0On+QcUYGVMOPrFUm5qkV/iCdjSuE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bllg/2urLxMrhi0EQ9vJE7hUT0j+9sipszv0uG4cD9GuneRFwaENHv+XPEAdtgpQ3
 BVZFTpfit0eEaeAj9ywQWv/smY2YtZf/mN1EftGrFsHzhC67p51Ja+zi9mOki67ikU
 bdIOsRWgYttAr8XixlwRIvmTM5QPJPhvaYQl+i4PciRR/q6EjKgIK9zuCcXtvpzGCT
 F6cNTJrPC0PmYKCC1kkyGGVZkhrhgSGZvmFlOFrzcqKJS7YGgoDKwgS5dJxErfmMuV
 dFziBQSpjp8J7wMtEcSa8ZcvMgc3mDpa8Bk+q/Hu3wSrbpkD3bkf3uCZvblDuGHCiN
 D2l1P2++pR8Rw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7322BC009;
 Tue,  2 Nov 2021 11:51:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1635850312; bh=/+rgwyKj69Vlkv0On+QcUYGVMOPrFUm5qkV/iCdjSuE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VMaB08Hu6Foyxs/pdMDPS6K8Al/e8m6rZ0Eoedy5eGGFg0BtzkXXkdvbiOhcja/bN
 nuUiCNQjIatikUFrmzTeCECJFWeWKEKzGxeMzs+Apt97UYqRG/ckfOhZmPwhsvD0zk
 WquzyAbppLOCo4qmbE1QJQ596SSnNxFVctkKlsxx71fQmYCyHTx61PGM5W+vV19UBR
 Y8CZYyWKlsHYEuE5CFwrqz/p2Gm5JZns92Z2k90P8+brOGfJojqbgPBRaRuGg3JP0P
 3yPeY9Oedsw7HTF2llivfdcWzb2wcY1P7/YE8RP9ZLuG5ZIzMw+4GplxnYfmp2hV/p
 f8wa6F+jyfD+g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id b13de0de;
 Tue, 2 Nov 2021 10:51:45 +0000 (UTC)
Date: Tue, 2 Nov 2021 19:51:30 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
Message-ID: <YYEYMt543Hg+Hxzy@codewreck.org>
References: <20211017134611.4330-1-linux@weissschuh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211017134611.4330-1-linux@weissschuh.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Sorry for the late reply Thomas Weißschuh wrote on Sun,
    Oct 17, 2021 at 03:46:11PM +0200: > Automatically load transport modules
   based on the trans= parameter > passed to mount. > The removes the requirement
    for the user to [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: codewreck.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1mhrOa-00Em9I-Ut
Subject: Re: [V9fs-developer] [PATCH] net/9p: autoload transport modules
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgpTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkKClRob21hcyBXZWnDn3NjaHVoIHdyb3RlIG9u
IFN1biwgT2N0IDE3LCAyMDIxIGF0IDAzOjQ2OjExUE0gKzAyMDA6Cj4gQXV0b21hdGljYWxseSBs
b2FkIHRyYW5zcG9ydCBtb2R1bGVzIGJhc2VkIG9uIHRoZSB0cmFucz0gcGFyYW1ldGVyCj4gcGFz
c2VkIHRvIG1vdW50Lgo+IFRoZSByZW1vdmVzIHRoZSByZXF1aXJlbWVudCBmb3IgdGhlIHVzZXIg
dG8ga25vdyB3aGljaCBtb2R1bGUgdG8gdXNlLgoKVGhpcyBsb29rcyBnb29kIHRvIG1lLCBJJ2xs
IHRlc3QgdGhpcyBicmllZmx5IG9uIGRpZmZlcm5ldCBjb25maWcgKD15LAo9bSkgYW5kIHN1Ym1p
dCB0byBMaW51cyB0aGlzIHdlZWsgZm9yIHRoZSBuZXh0IGN5Y2xlLgoKTWFrZXMgbWUgd29uZGVy
IHdoeSB0cmFuc19mZCBpcyBpbmNsdWRlZCBpbiA5cG5ldCBhbmQgbm90IGluIGEgOXBuZXQtZmQK
b3IgOXBuZXQtdGNwIG1vZHVsZSBidXQgdGhhdCdsbCBiZSBmb3IgYW5vdGhlciB0aW1lLi4uCi0t
IApEb21pbmlxdWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
