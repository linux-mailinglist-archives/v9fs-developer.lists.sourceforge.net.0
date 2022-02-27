Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B792C4C5FA9
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 00:02:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOSYe-0004C5-27; Sun, 27 Feb 2022 23:02:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nOSYc-0004Bz-27
 for v9fs-developer@lists.sourceforge.net; Sun, 27 Feb 2022 23:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BJQ1J5uztCEdU0q2U1u+VTsYQsC4vOYAgl4SfWF3M+8=; b=IiO4HskdKmWW9CzI41cnCL3N8l
 lFSKZFI7p9VQxlLKQHC52fDtuw6jT6aDy8Y4weOO2qz560SswpWHbv0kFZaiFWg53hWKhMHIkoD9A
 mVk/oiVHihNvg+OMpxSUVcBzm31DsqMCaZE0BHHWigkY4rpNgo1gbY9N3XIaXzyMOXkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BJQ1J5uztCEdU0q2U1u+VTsYQsC4vOYAgl4SfWF3M+8=; b=Rs55Mrki2b+WYHev4ZuDpCtonV
 +3iRQHw02uz66mOzuu1ThvALon9QaVUIJpjo9neyFb3t1htHdaSRIVZoathStqScExr7FusRPdprw
 tjx24I3fciqklnTjxTriErkgGEnGZpN/6WmLViFTqmE0QJIk62Db/edVX/CdFn45/6DI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nOSYW-0006Va-5k
 for v9fs-developer@lists.sourceforge.net; Sun, 27 Feb 2022 23:02:24 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 6F7D1C01D; Mon, 28 Feb 2022 00:02:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1646002933; bh=BJQ1J5uztCEdU0q2U1u+VTsYQsC4vOYAgl4SfWF3M+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s78CKbRgW+GKMMxOLR0HNszyf1FR4vGyKBJwcv79G2oY761J9bt2o21u80aI8BazQ
 xuXYO6KVRwHxMu4Yck+OTpPWutzyjtt5QkolBMVRhAzgg3BrsmCjLAPYUIu3UXTZSp
 2NMHMakwrMtZiMrHrsyhHryN1Z6AwKO0jF4XwawWSS8Xl/RCm3sD0ACESEgwWXX7su
 ShNecGRKnGxzvXW9uPBZzAwZo+V+1ffViDBrrxM5B8RuosRjcJ7hsauX2MgyLlY7lr
 2mFpAoK0rPXGrtGY6paQX+NuN5zybkJo6GCt64n6Fi438tH8/9d5qz21FH46YC+pb0
 YH0xVhwk8VKKA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 340DEC009;
 Mon, 28 Feb 2022 00:02:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1646002932; bh=BJQ1J5uztCEdU0q2U1u+VTsYQsC4vOYAgl4SfWF3M+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=US3pyf3ttO6dlJwXWn1ursQzktLC4QoPE/1yfAq/Czg7FSLqZHnJqKht3FycoZBnm
 qjqdBN67PFhmo8eUIW07cv3j4PmDEXOxchf0c6u2taoq1qdzHe2OfW6aKUEqGRNNyX
 C7p7kNImjlhpMjOKQpNZngLsDRZNYVi7WaR3hb8MSXGLohf47jVoDYL/MGO/VCQaeH
 7tpTRmDJbVlUFV4Bfh8IQNZO2Z4OF4bjxvb2/ebk0gBqFEVn6+hZazPIiYj8QyqHUY
 FwaRukuterGUTeHpB2xvHZibfOKiah2poXgp/Tss3cLnNWcSKZzhntp70YcynLcKT2
 U1GgvNgYo+GJg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c5b1dc4c;
 Sun, 27 Feb 2022 23:02:07 +0000 (UTC)
Date: Mon, 28 Feb 2022 08:01:52 +0900
From: asmadeus@codewreck.org
To: ng@0x80.stream
Message-ID: <YhwC4BjD0QQCTLjj@codewreck.org>
References: <20220227223130.F10EEC01A@nautica.notk.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220227223130.F10EEC01A@nautica.notk.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ng@0x80.stream wrote on Sun, Feb 27,
 2022 at 10:31:27PM +0000:
 > Quoting Dominique Martinet <asmadeus@codewreck.org>: > >> Further, there
 is no requirement, in the protocol, that IO operations > >> be [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nOSYW-0006Va-5k
Subject: Re: [V9fs-developer] Make 9p fast
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
Cc: ericvh@gmail.com, rminnich@gmail.com, lucho@ionkov.net,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ng@0x80.stream wrote on Sun, Feb 27, 2022 at 10:31:27PM +0000:
> Quoting Dominique Martinet <asmadeus@codewreck.org>:
> >> Further, there is no requirement, in the protocol, that IO operations
> >> be serialized.
> > 
> > I've played with that (in a userspace client):
> > https://github.com/martinetd/space9/blob/master/src/9p_libc.c#L820
> > 
> > It's been a while but you can definitely get wire speed with that.
> 
> Forgive the naive question, but would this change entail that a
> client may not observe its own writes? (Because the client may send
> Twrite and Tread but the Tread may be served first, I mean.) Isn't that
> undesirable? What do other file systems do?

I this part is mostly safe as long as:
- for cache=none, we make sure the IOs are finished before we return to
userspace. It means that during a write the state within the written
offset might be inconsistent, but during a write there are no guarantees
how the file is being modified afaik?
That does bring a few interesting failures though, especially when
appending at the end of a file, e.g. what if when sending two writes the
later succeeded but the first failed?...
This was brought up recently for reads here for netfs:
https://lkml.kernel.org/r/2752208.1642413437@warthog.procyon.org.uk

so, hm, well, it might not be as easy as it sounded like; thanks for the
question!

- for cached version, the client's own reads will be served from vfs
cache and should be coherent with themselves.
In this case if some writes fail when flushing cache we already see
weird behaviour, so there would be no problem making this parallel as
well on top... Userspace would get errors on flush or close calls afaik.


As I said in my opinion this would only really be interesting for cached
mode, so I'd be happy to give up on cache=none (which, incidentally, is
the default -- cached mode would need some better memory management to
be made default, but I also believe that would be interesting...) 

Well, none of this will be made by me anytime soon anyway, so it
doesn't hurt to discuss -- I just wanted to say there's definitely
things that can be done or tried :)
-- 
Dominiqu


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
