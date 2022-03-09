Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 441CF4D38F9
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Mar 2022 19:39:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nS1Db-00062f-Gl; Wed, 09 Mar 2022 18:39:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jlayton@redhat.com>) id 1nS1DZ-00062V-M8
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 18:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TU5GSQcUsGsLm0QedmIo4Msii85jhaXsQwdtUQuJMSQ=; b=dpI+4g1Sd8kcHytBohqY7AsJnQ
 074PTVAS/5P6qKo7gChAeXCvebcxDFurs/SwKo/BaokoA9SFLo6oa8iX5TJE9Eo8qqKlIaS9UpfEr
 jTfWvQ5zxbcSkweyGwB0G2ZXnWMppAYYnDr8qjo6nem7Vn4x2S3AKDrWX8XNy51x3vlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TU5GSQcUsGsLm0QedmIo4Msii85jhaXsQwdtUQuJMSQ=; b=dOO2RvE818TGB5+0IiCFvmGT8B
 B5IZFHyiB5W8nQEFoa/URDaQQlwF6okQBiR5X6ibAeurzeQLB3iiVSAed0z/7FAqhehr6SwC7RO3t
 TSjirlRkANimZoI6V3a5TRTsF+oLewRJSGFmLJSg/i93PCeYY1hUXjlD6+PIHOuP64Pc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nS1DT-0007qy-Un
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Mar 2022 18:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646851153;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TU5GSQcUsGsLm0QedmIo4Msii85jhaXsQwdtUQuJMSQ=;
 b=S5WBFmvE9r7esLZ5VHJ3CHKi/kXw7jvX1/6AKT4Szvwi7wc22uzxla9bZMflZW0DuqSGnW
 ds+ukbgIOk1SGI0QIvnmCru4twXOfHfThenInnUIkL7aB7r/AGXzMFkMCoqWM60OHVAnEU
 OKuW1DKd7DRGWonK176OYlhDR8S2fYA=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-160-Iz7DTnZ4ObWDFc35Jl2p_Q-1; Wed, 09 Mar 2022 13:39:10 -0500
X-MC-Unique: Iz7DTnZ4ObWDFc35Jl2p_Q-1
Received: by mail-qk1-f200.google.com with SMTP id
 q24-20020a05620a0c9800b0060d5d0b7a90so2177756qki.11
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 09 Mar 2022 10:39:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=TU5GSQcUsGsLm0QedmIo4Msii85jhaXsQwdtUQuJMSQ=;
 b=5J1WOIVpGHD1jOM/JxFN5mdxgFQkCBYNlmck2sirP51cUZBJEoA5wFPfY/IWw2IcpR
 RoVoCAg+Kek2dAz0ocnJDE/3xrf0/2AYPu1apqjyF1PCPJW5Ar/2MJyTC1uZF1qw5sAt
 ziNEqYlQFk0GpH82W8n7lyfR18YiHoaUlIE9U5k+KJHPSi1lcJ8ZMo0xpUWQcLNc7Khg
 YcjbP99gnzNIiE2BmqfLTbUki9Fklg5hp8zQ9s/UJlzBn4byRbLSAsjLZ4Np8J54abAv
 N3rOTSap8cxg2Eoxw/tmYSARqY1lhEKFxoKLLmFN61Zzf44+pnR6/pPzQFuKShpJDD6K
 NYAA==
X-Gm-Message-State: AOAM532KP73SbQkwA1mNUM+IrDXJQkHi6pt7lfqjgtTroQfKGfnqQH8S
 c3MJ2OU0yVPDY/kwQLCGlZ70tYUcBLHEHJwOSSWHVWBjFk8gJTRSeGEMndBG0OnDv09qrv85C3L
 mInIrhWyJT58g/sJ5DJDxlIGLmXKqqJkzFkA=
X-Received: by 2002:a05:6214:d44:b0:435:b8fd:b1d7 with SMTP id
 4-20020a0562140d4400b00435b8fdb1d7mr808167qvr.19.1646851150316; 
 Wed, 09 Mar 2022 10:39:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzICtIC42Xa9GHFyHP+MaqIARsvCbO2mnHxe/nMuAl463CulcS9BHk/JL6v+PefmyNOF/kr8A==
X-Received: by 2002:a05:6214:d44:b0:435:b8fd:b1d7 with SMTP id
 4-20020a0562140d4400b00435b8fdb1d7mr808157qvr.19.1646851150152; 
 Wed, 09 Mar 2022 10:39:10 -0800 (PST)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154]) by smtp.gmail.com with ESMTPSA id
 t7-20020a05622a180700b002e0ccf0aa49sm1829549qtc.62.2022.03.09.10.39.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Mar 2022 10:39:09 -0800 (PST)
Message-ID: <737c8db7461567ec04d5e2a7dbec58b699f8f16c.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>
Date: Wed, 09 Mar 2022 13:39:08 -0500
In-Reply-To: <1712592.1646840957@warthog.procyon.org.uk>
References: <c2f4b3dc107b106e04c48f54945a12715cccfdf3.camel@redhat.com>
 <164678185692.1200972.597611902374126174.stgit@warthog.procyon.org.uk>
 <164678192454.1200972.4428834328108580460.stgit@warthog.procyon.org.uk>
 <1712592.1646840957@warthog.procyon.org.uk>
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 2022-03-09 at 15:49 +0000, David Howells wrote: >
 Jeff Layton <jlayton@redhat.com> wrote: > > > Should you undef EM and E_ here
 after creating these? > > Maybe. So far it hasn't mattered... > 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nS1DT-0007qy-Un
Subject: Re: [V9fs-developer] [PATCH v2 02/19] netfs: Generate enums from
 trace symbol mapping lists
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, David Wysochanski <dwysocha@redhat.com>,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2022-03-09 at 15:49 +0000, David Howells wrote:
> Jeff Layton <jlayton@redhat.com> wrote:
> 
> > Should you undef EM and E_ here after creating these?
> 
> Maybe.  So far it hasn't mattered...
> 

I wasn't suggesting there was a bug there, more just a code hygiene
thing. With macro names as generic as that (especially), it'd probably
be good to undef them once you're done.
-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
