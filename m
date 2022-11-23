Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E95E26368F6
	for <lists+v9fs-developer@lfdr.de>; Wed, 23 Nov 2022 19:34:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxuZP-0002WG-SR;
	Wed, 23 Nov 2022 18:34:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1oxuZ6-0002Vi-T5
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 18:33:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T/jG5QaYqTRKNFcJtqKGHj4SfbKFSJH0wslCbBk+0rc=; b=enaSwNgAgOSccQxZgufWpRbKNZ
 I4whENOpFh+gUjUTSmX+nDVO+VEPyzCV9TpMBqhn7XwPKLWHWCXuA+bX3ZIA9u5RoK8arQxjKaKst
 QSMJjSWua4i/gKHsbjBMUTCTh/Qmlzqpl19crz7NxIfQiOLpcK8uxCoZbqf5lC/W1S04=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T/jG5QaYqTRKNFcJtqKGHj4SfbKFSJH0wslCbBk+0rc=; b=kRFzoBgG5TwImu4C9YThZBjzj3
 pVRNetVVBRKTFAjtU0RYsqoECmcAECkAbOhH0cLl+sJ3mMD4L+l54avhxxNfrwKqZThQF4W6YD0Si
 P0wiTdfgbULMMEEA5PGI3SYWgbi/jP7ToyGPB00ZNbA2n6O7k8d73K9n4kmfMQPAfUBo=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oxuZ3-00Gn7k-2C for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 18:33:44 +0000
Received: by mail-qk1-f181.google.com with SMTP id z1so13056708qkl.9
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Nov 2022 10:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=T/jG5QaYqTRKNFcJtqKGHj4SfbKFSJH0wslCbBk+0rc=;
 b=WtEZfFy9CjWS25vRvH8BUGmfQ5TppWVPJY29aYmVjK2t/Gqd80v173byCSBDvOcqZ5
 GS3iagkeA7ssVh/ddKEkJKHeWkCPYto/COdNwh44sfuBXjAau3yrVZ6HAJiXAaELgCMQ
 DakZoiuRSNhC/sDbjfyndFBio5BbqUEFc1b48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=T/jG5QaYqTRKNFcJtqKGHj4SfbKFSJH0wslCbBk+0rc=;
 b=QxDRpFEnP52atCW2HwF4Rw/qok+ucyHtnvbcU2xDt2hdQAgTJqgfIOA3xpId9DJbU1
 QzDyzYfeyxOLZFoeDzn7IXeyIQAYUN2PmROg3BmrKsfX3XjBHUdLtlA/VkGANVhIGEKS
 vbRDhamKtFGaKie5GJt9+fo/xvF9rA0ORAN1ywf6NjaP1Qib9MPJRiM5dKR/xInfuxxL
 LXc26qOShe8x+JzZdD2GzVzcltdbvxKvnwHzr8qlYjutBODTB382sQvcopzE/xY7YK/v
 aMKfinYafXMeyNnB1E1ZMtQThllkL/z0QZmtW/KvSdwTXbMliIXALfDqQPKnzkfKy2IQ
 rb8g==
X-Gm-Message-State: ANoB5plLOykKQM9O4vbEScnNdA+LuL+b3Q0ViHL59X9rmYbPiMRpKqVI
 jHovwkOZfGmwqLub04Q3vC76elbstZeMKw==
X-Google-Smtp-Source: AA0mqf4ZZxQ4Q6/q1JzkmjsbN5V1Zr9mwEgTVXS8zblgGjF7oJFILlVdwVolzRpCeVv1fetrTlsWNA==
X-Received: by 2002:a05:620a:108c:b0:6cd:fd44:d83e with SMTP id
 g12-20020a05620a108c00b006cdfd44d83emr12462312qkk.594.1669228414954; 
 Wed, 23 Nov 2022 10:33:34 -0800 (PST)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com.
 [209.85.222.170]) by smtp.gmail.com with ESMTPSA id
 k18-20020a05620a415200b006e54251993esm12882076qko.97.2022.11.23.10.33.34
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Nov 2022 10:33:34 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id z1so13056674qkl.9
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Nov 2022 10:33:34 -0800 (PST)
X-Received: by 2002:ac8:41cd:0:b0:3a5:1ba7:717d with SMTP id
 o13-20020ac841cd000000b003a51ba7717dmr9188380qtm.678.1669228012067; Wed, 23
 Nov 2022 10:26:52 -0800 (PST)
MIME-Version: 1.0
References: <1459152.1669208550@warthog.procyon.org.uk>
In-Reply-To: <1459152.1669208550@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 23 Nov 2022 10:26:36 -0800
X-Gmail-Original-Message-ID: <CAHk-=wghJtq-952e_8jd=vtV68y_HsDJ8=e0=C3-AsU2WL-8YA@mail.gmail.com>
Message-ID: <CAHk-=wghJtq-952e_8jd=vtV68y_HsDJ8=e0=C3-AsU2WL-8YA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 23,
 2022 at 5:02 AM David Howells <dhowells@redhat.com>
 wrote: > > Is the attached patch too heavy to be applied this late in the
 merge cycle? > Or would you prefer it to wait for the merg [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oxuZ3-00Gn7k-2C
Subject: Re: [V9fs-developer] [PATCH v3] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 dwysocha@redhat.com, ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 willy@infradead.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Nov 23, 2022 at 5:02 AM David Howells <dhowells@redhat.com> wrote:
>
> Is the attached patch too heavy to be applied this late in the merge cycle?
> Or would you prefer it to wait for the merge window?

This patch is much too much for this point in the release.

But I also think it's strange in another way, with that odd placement of

        mapping_clear_release_always(inode->i_mapping);

at inode eviction time. That just feels very random.

Similarly, that change to shrink_folio_list() looks strange, with the
nasty folio_needs_release() helper. It seems entirely pointless, with
the use then being

                if (folio_needs_release(folio)) {
                        if (!filemap_release_folio(folio, sc->gfp_mask))
                                goto activate_locked;

when everybody else is just using filemap_release_folio() and checking
its return value. I like how you changed other cases of

        if (folio_has_private(folio) && !filemap_release_folio(folio, 0))
                return 0;

to just use "!filemap_release_folio()" directly, and that felt like a
cleanup, but the shrink_folio_list() changes look like a step
backwards.

And the change to mm/filemap.c is completely unacceptable in all
forms, and this added test

+       if ((!mapping || !mapping_release_always(mapping)) &&
+           !folio_test_private(folio) &&
+           !folio_test_private_2(folio))
+               return true;

will not be accepted even during the merge window. That code makes no
sense what-so-ever, and is in no way acceptable.

That code makes no sense what-so-ever. Why isn't it using
"folio_has_private()"? Why is it using it's own illegible version of
that that doesn't match any other case? Why is this done as an
open-coded - and *badly* so - version of !folio_needs_release() that
you for some reason made private to mm/vmscan.c?

So no, this patch is too ugly to apply as-is *ever*, much less during
the late rc series.

                 Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
