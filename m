Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 516DF2CAD7A
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 21:38:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kkCPQ-0002ru-AU; Tue, 01 Dec 2020 20:38:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <toke@redhat.com>) id 1kkCPP-0002ra-5V
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 20:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sbKmbj2q3bXVVF2UGoGz1cN3aYCzV4bXk/zjzcW+Dng=; b=lRpUtrZ6fhS8orVFtv/kBU/Px9
 pCsSw0zzBy0laiJJcgIu1PBX3Wyv5NODt0w25wZ6l8mFmeqxu1lATndU1YYYuCBHGEQH8JQQl6LDh
 uFXENiG3ZOvSDyDjWHlByx4WucJqOkOAyvMid8k7LKpHMWsQ9xOm+Gg4Bakp8wvgen7Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sbKmbj2q3bXVVF2UGoGz1cN3aYCzV4bXk/zjzcW+Dng=; b=ciUkE/POOGVIlrwjwQriAoQ4tO
 AJ9pYNEypFisYpSig4lwSa7ZKQ045AgfC8xtDBwaMV8icMMi+VypgckckeH2jUGiWM7fSHboyS62E
 a+8b4DMZoEmduNVcKyDoGp+7mVBU2jaqgXIRwcvepA4S68v3vptso1EshGCqauzHxih0=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kkCPK-009slh-Qu
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 20:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606855069;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sbKmbj2q3bXVVF2UGoGz1cN3aYCzV4bXk/zjzcW+Dng=;
 b=Lw/6Oh7MHkYuc8KQF3s+FXblxo8eFATFL1Iw1NKuakAWOhwY821xe9XXI0FjhzEYcBQdNr
 UhGSCNLGZ94aBl2iOSXCBsBdoo5WkP4PgD+Rm/tZsf3GYcLad21zMt1qIHFvPtghR8YbuO
 /kjcDcAAp0RlhLIzMq9Ib27tolJcIRE=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-eky2GCATP82IlMeF0hZqcg-1; Tue, 01 Dec 2020 15:37:47 -0500
X-MC-Unique: eky2GCATP82IlMeF0hZqcg-1
Received: by mail-ej1-f70.google.com with SMTP id g18so1913453eje.1
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 01 Dec 2020 12:37:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=sbKmbj2q3bXVVF2UGoGz1cN3aYCzV4bXk/zjzcW+Dng=;
 b=ixncYFNn1MgopptiFqYb0FW0aUZEBzxUBPu5bnZe7BlFEDQQYLfi5Ct83j8lOY8D73
 g5BHcRjswY0k8sYsIPjfRPNV/3crnX2KtLG2Iz3XrpFz3+/tzxbq9U/zQ06JxJwXaiOi
 WqZifN7XAl40rNrCLQxd17qah7KruDyYmK91Ul6JOMxyWKD9g/JqvAdSqoKy+8qyaDlN
 8bsWkZqW/2rdSnNlbmMIycEf47SC7Bqo2gBxo5Ii//f96Sh2IKsfH/ac5wU4Kd57Slzu
 8zkPKKE1W2K1pa0EHfJs5EBdwyXKcsFO+AaN7E/59U/sbRl6uF2h6n7mAcyfPwd+svVV
 W3hw==
X-Gm-Message-State: AOAM531Fj9Kb85fFg/6GgHeL9YVXUKbDVu79k72lat1y3eSUVR3ky1rJ
 h496A3xs34+bTB61smRhQDQz641vv337DmNwj2Cqqq24n69Qj2qX1kqcg6u3SRdaXmTQX3c2Nf8
 ixw5Ppt8P5Bsd+BnPEpLe6t2z/sfg8FSyDRs=
X-Received: by 2002:a17:906:cc9c:: with SMTP id
 oq28mr4885646ejb.224.1606855066030; 
 Tue, 01 Dec 2020 12:37:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy6vxJmKHJ0YVxj6K63hN5ZVVl3SbRygXSOycPC+FEbzXuZ3rtlcfEyvNl8i5f5SUNgN2Hh0Q==
X-Received: by 2002:a17:906:cc9c:: with SMTP id
 oq28mr4885636ejb.224.1606855065895; 
 Tue, 01 Dec 2020 12:37:45 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id y14sm428849edi.16.2020.12.01.12.37.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 12:37:45 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 05B14182EF0; Tue,  1 Dec 2020 21:37:45 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dominique Martinet <asmadeus@codewreck.org>, asmadeus@codewreck.org
In-Reply-To: <1606837496-21717-1-git-send-email-asmadeus@codewreck.org>
References: <20201201151658.GA13180@nautica>
 <1606837496-21717-1-git-send-email-asmadeus@codewreck.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 01 Dec 2020 21:37:44 +0100
Message-ID: <87blfd1cvb.fsf@toke.dk>
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
X-Headers-End: 1kkCPK-009slh-Qu
Subject: Re: [V9fs-developer] [PATCH] fs: 9p: add generic splice_write file
 operation
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RG9taW5pcXVlIE1hcnRpbmV0IDxhc21hZGV1c0Bjb2Rld3JlY2sub3JnPiB3cml0ZXM6Cgo+IFRo
ZSBkZWZhdWx0IHNwbGljZSBvcGVyYXRpb25zIGdvdCByZW1vdmVkIHJlY2VudGx5LCBhZGQgaXQg
YmFjayB0byA5cAo+IHdpdGggaXRlcl9maWxlX3NwbGljZV93cml0ZSBsaWtlIG1hbnkgb3RoZXIg
ZmlsZXN5c3RlbXMgZG8uCj4KPiBGaXhlczogMzZlMmM3NDIxZjAyICgiZnM6IGRvbid0IGFsbG93
IHNwbGljZSByZWFkL3dyaXRlIHdpdGhvdXQgZXhwbGljaXQgb3BzIikKPiBDYzogVG9rZSBIw7hp
bGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRG9taW5p
cXVlIE1hcnRpbmV0IDxhc21hZGV1c0Bjb2Rld3JlY2sub3JnPgoKRldJVzoKCkFja2VkLWJ5OiBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
