Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 707FB636DD6
	for <lists+v9fs-developer@lfdr.de>; Thu, 24 Nov 2022 00:00:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxyj2-0004Qj-Pk;
	Wed, 23 Nov 2022 23:00:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1oxyj2-0004Qd-12
 for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 23:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kZnCvaEQ344vGtn47RMsQAQkT919w64rZm3gu+vPQMY=; b=QRdQuvxfxZRlhiE/uKmqdCT1z1
 MFNHQchp+lXN7cv+q0/fqP5+p/RvxLb3SjDAYfye4vOsZZxI7VK6mrfcg17kQEMIYmtIw8COHUrcO
 UEK4A51wmL2otYnA2iFVGKNynkxXTMf1FlScC312Ks9H1Ptp9wXg5znSYGwYUPhDP/ds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kZnCvaEQ344vGtn47RMsQAQkT919w64rZm3gu+vPQMY=; b=jVW5IWVUYeL6P6rhTt2zPxQMgR
 9NI7rFVhkce8qG8lhlByKthpsPvbeGarDF6QPwxFqhnxy+1I7Y7jA13tCFAwgY7hklyt++tIUuxeG
 wRU001MHUom2lTlSvqokk5sgeRm0VENyOcOD4cFNMcZ+R4Qf4d7/1hP98fbkdKhuo3Zk=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oxyiu-00051u-AI for v9fs-developer@lists.sourceforge.net;
 Wed, 23 Nov 2022 23:00:15 +0000
Received: by mail-qt1-f179.google.com with SMTP id cg5so142739qtb.12
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Nov 2022 15:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=kZnCvaEQ344vGtn47RMsQAQkT919w64rZm3gu+vPQMY=;
 b=ZO8KT8PP+ynCgfpAsn0gLSY6SzCQhijyPIHusMskwtf9T1rrauFK8Ru8L7xDqiT98Q
 whp7Qv/cl82o4vi2+YEdK/JvvoG6oPw59CunYWdS4vec2yu+4W+UTQwMrh5IPxj3UHlB
 r/ebpwM/LCmalYllI981sk89ihQ71VnQhIaAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kZnCvaEQ344vGtn47RMsQAQkT919w64rZm3gu+vPQMY=;
 b=Y9DNNuWqA6y5pBJBT095W6GWqBFzbEwpP6f2ItGCdpnQU2ap2TyRUmkFjiU25pTRie
 +O8+mmMtVKNERPjviT1enWWX29kN8gCLX6T3Yi/PMWLAs78Im0bIlOi4ed3xO2Leyw38
 aQky/r0CkvLvsx681SIiVBuYtCnwqXUS+JGwVUTCFfnV0cjqTpL+MzaCpqKxvmeOyglD
 X+OWuOPwKnF0t1F34Nle9QoMPCAmelQ4kj5uqoo3uuE4DkTpG9Eo5J0Q4xEGetIfl9dS
 58hiC7Glas50R9bjwavayt/Bj/5coXSpxIzacCZ0+Qpc6rCHReoDJXM2/t0B7ahuAbpx
 P0Ng==
X-Gm-Message-State: ANoB5pnZndZVk1sDZSPKlJ2UbsmYceHOd1bLoOJLPj8VsTeDFV+ycW0K
 Eii/ToR97WxHFee9FMRRpxBCvBDC2kGpiA==
X-Google-Smtp-Source: AA0mqf7g5nueU4p5Z9PRxSpIyHropGoVr/rDtAR11SoVgv1FK9jRvNQbMKXHRGr3xCXyUkO6Vq++tA==
X-Received: by 2002:a05:622a:4010:b0:3a5:dee6:3f9 with SMTP id
 cf16-20020a05622a401000b003a5dee603f9mr28549811qtb.672.1669244402182; 
 Wed, 23 Nov 2022 15:00:02 -0800 (PST)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com.
 [209.85.160.181]) by smtp.gmail.com with ESMTPSA id
 k11-20020a05620a0b8b00b006fbdb9d04b1sm10331631qkh.40.2022.11.23.15.00.01
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Nov 2022 15:00:02 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id z6so162117qtv.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 23 Nov 2022 15:00:01 -0800 (PST)
X-Received: by 2002:ac8:44b9:0:b0:3a5:81ec:c4bf with SMTP id
 a25-20020ac844b9000000b003a581ecc4bfmr16610980qto.180.1669243994092; Wed, 23
 Nov 2022 14:53:14 -0800 (PST)
MIME-Version: 1.0
References: <166924370539.1772793.13730698360771821317.stgit@warthog.procyon.org.uk>
In-Reply-To: <166924370539.1772793.13730698360771821317.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 23 Nov 2022 14:52:58 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjq7gRdVUrwpQvEN1+um+hTkW8dZZATtfFS-fp9nNssRw@mail.gmail.com>
Message-ID: <CAHk-=wjq7gRdVUrwpQvEN1+um+hTkW8dZZATtfFS-fp9nNssRw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 23,
 2022 at 2:48 PM David Howells <dhowells@redhat.com>
 wrote: > > I've also got rid of the bit clearances > from the network
 filesystem
 evict_inode functions as they doesn't seem to > be [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oxyiu-00051u-AI
Subject: Re: [V9fs-developer] [PATCH v4 0/3] mm, netfs,
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
 Jeff Layton <jlayton@kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Nov 23, 2022 at 2:48 PM David Howells <dhowells@redhat.com> wrote:
>
>   I've also got rid of the bit clearances
> from the network filesystem evict_inode functions as they doesn't seem to
> be necessary.

Well, the patches look superficially cleaner to me, at least. That
"doesn't seem to be necessary" makes me a bit worried, and I'd have
liked to see a more clear-cut "clearing it isn't necessary because X",
but I _assume_ it's not necessary simply because the 'struct
address_space" is released and never re-used.

But making the lifetime of that bit explicit might just be a good idea.

             Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
