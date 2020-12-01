Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEC42CAD79
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 21:38:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kkCPP-0002rh-8x; Tue, 01 Dec 2020 20:37:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <toke@redhat.com>) id 1kkCPB-0002q8-80
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 20:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a3rMevXawjf1xgy7wQ9tEtBMA4tgZtMSRD9aiYbQGjI=; b=MZQz1MTlFgZLHJKnC8i0cLx2Vf
 XYFssfXabAJGda07aI1BUSWm78hqnVDuU8LL1X2Tr7HnenSuAI8Bps1pwmAXcMPZOWfYFcuAXMk+y
 XqSSIJRKuHudXBc6XvuZ8MnjOxbWwTAHr9q9YQ+qPkPvDbgrife8V3ax8hLO1uhrQJOs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a3rMevXawjf1xgy7wQ9tEtBMA4tgZtMSRD9aiYbQGjI=; b=ToGFnzkOwToIHBGlaF3GYMZIgw
 hkCPaDZ2JWewQAOx5NSxCXQG4INNGohKMAMNbLB4V+THGCubFGL60UPj6V6XhBXLZF4h5FmFKd7EU
 LRYBRzLwUSoggIc1NQ9ZMz5R6/frTYglNYsAOJShakS8NgHT0Ohe5wUxq/g8PIqYsPeQ=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kkCOy-009sjd-Vl
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 20:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606855039;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a3rMevXawjf1xgy7wQ9tEtBMA4tgZtMSRD9aiYbQGjI=;
 b=Q5iMzDSVp6BK3tjOn/BUG57f0yczRmvZYXXpiC044rXTU7Z6brC2U4wtKtR07Ad08xDs89
 93xJ3LaKF9F90sKkUxEw6yX8w8t2tq7FioGe1L+Go/dwYL3L9dgHzJ/wSdrE6BAHwUsEjl
 YKK9YAUiyH224Dt3apTSTE7IUFhg49g=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-H3iapI7kM-ml-qcxFrwb-Q-1; Tue, 01 Dec 2020 15:37:18 -0500
X-MC-Unique: H3iapI7kM-ml-qcxFrwb-Q-1
Received: by mail-ej1-f72.google.com with SMTP id t4so1904216eju.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 01 Dec 2020 12:37:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=amfBnaeUotmB7/il2H7oWwrZJeIKyDFcSTqRbwNFqsI=;
 b=RXZlMIFU86yzdCjOeXfAXQfU5Z6qlkijKg7+5+G8PDKP6FNxOdxQqu0yC1OtXznwUO
 uwXz1LrwZCq8CYICBtk2YqKfFixuel2HvlD2NIB+H5op847MhDK2mopV1D8zeoo8ck8u
 PS6pUV5q1zcZZzHnk3c9zIcHHDLnL6fVvchyZFIi6OjAR4gXOs4p2XsvoTBUm5QyHRWx
 PcL1j+rZPY7IDqo+J3BQ2Lo+nhhkbBjjw9ZylCOjZ+OujP3oiWS5z+iXpyg5k7hyxlhQ
 5m+r3g4dLsK+TB3eKmF9FKjkow7GvO+wvNgYeu5HuMtPdcbfInroZr+hxYbTaPhWxSsf
 3j7g==
X-Gm-Message-State: AOAM531sgeYnjLs2HcDoENXDzjkBjIAuFrDXR8FzPGWta4IlMGaHVgsK
 N7yozSbRsgNzGCLRUcAKZRp0lkiPulH3B2rnlWdhdCcJa63sPxaH24j2CTVPJT0PDG7kQMt9/zL
 zuwFausz3ixTWqO4jArQnSqasX4yi1KdzQMQ=
X-Received: by 2002:a17:906:e81:: with SMTP id
 p1mr4869089ejf.494.1606855036722; 
 Tue, 01 Dec 2020 12:37:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwm0kjn87rkYSgj4f0Z10VM296Jj9OqfFNO8Y43EOkM7Io+QtfZDXI/gLsI6cGKvHKlIG3Gng==
X-Received: by 2002:a17:906:e81:: with SMTP id
 p1mr4869076ejf.494.1606855036536; 
 Tue, 01 Dec 2020 12:37:16 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id m7sm350381ejo.125.2020.12.01.12.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 12:37:15 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 628FB182EF0; Tue,  1 Dec 2020 21:37:15 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <20201201153950.GA20545@nautica>
References: <20201201135409.55510-1-toke@redhat.com>
 <20201201145728.GA11144@nautica> <20201201151658.GA13180@nautica>
 <87mtyx1rem.fsf@toke.dk> <20201201153950.GA20545@nautica>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 01 Dec 2020 21:37:15 +0100
Message-ID: <87eek91cw4.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kkCOy-009sjd-Vl
Subject: Re: [V9fs-developer] [PATCH] fs: 9p: add generic splice_read file
 operations
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9taW5pcXVlIE1hcnRpbmV0IDxhc21hZGV1c0Bjb2Rld3JlY2sub3JnPiB3cml0ZXM6Cgo+IFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZSBvbiBUdWUsIERlYyAwMSwgMjAyMDoKPj4gPiBU
aGlzIG1hZGUgbWUgdGVzdCBjb3B5X2ZpbGVfcmFuZ2UsIGFuZCBpdCB3b3JrcyB3aXRoIGJvdGgg
YXMgd2VsbCAodXNlZAo+PiA+IG5vdCB0bykKPj4gPgo+PiA+IGludGVyZXN0aW5nbHkgb24gb2xk
ZXIga2VybmVscyB0aGlzIGNhbWUgYXMgZGVmYXVsdCBzb21laG93PyBJIGhhdmUKPj4gPiBzcGxp
Y2Ugd29ya2luZyBvbiA1LjQuNjcgOi8gc28gdGhpcyBicm9rZSBzb21ld2hhdCByZWNlbnRseS4u
Lgo+PiAKPj4gSHVoLCBubyBpZGVhOyB0aGlzIGlzIG15IGZpcnN0IHRpbWUgZGlnZ2luZyBpbnRv
IGZpbGVzeXN0ZW0gY29kZSwgSQo+PiBub3JtYWxseSBkbyBuZXR3b3JraW5nIGFuZCBCUEYgOikK
Pgo+IEluIGNhc2UgYW55b25lIGVsc2Ugd2FudHMgdG8ga25vdywgdGhpcyBicm9rZSBpbiA1LjEw
LXJjMSB3aXRoCj4gMzZlMmM3NDIxZjAyICgiZnM6IGRvbid0IGFsbG93IHNwbGljZSByZWFkL3dy
aXRlIHdpdGhvdXQgZXhwbGljaXQgb3BzIikKPgo+IFNvIHJlYWxseSBhIHJlY2VudCByZWdyZXNz
aW9uLCBnb29kIGNhdGNoIDopCgpUaGFua3MgLSBhbmQgd2hhdCBhIGx1Y2t5IGNvaW5jaWRlbmNl
IHRoYXQgSSBoYXBwZW5lZCB1cG9uIHRoaXMgbm93IHNvCml0IGNhbiBiZSBmaXhlZCBiZWZvcmUg
NS4xMC1maW5hbCA6KQoKLVRva2UKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
