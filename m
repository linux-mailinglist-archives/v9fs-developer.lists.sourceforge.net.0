Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCF9315691
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 20:14:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9YSa-0006De-Rr; Tue, 09 Feb 2021 19:14:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1l9YSZ-0006DX-Qx
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 19:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1tHDrQ7k7QBExa6hxOU6qMztojmSPjc893LQ4fde7dg=; b=PbRoogcRLparOtvRE6isRP7+jR
 1bA8hxk7S1QES03XvL16qIYxVAm3AnyPRCqrAGHSksGohti+ZZVJxLmujpcGBzZeCFIVkaXqAsfZK
 Rk8iJzTcRJ5mqjWhILDt08f/RmzQfGWFD05aSdhFuZOXRV8WdqiCG8op2CqvWOyItxbg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1tHDrQ7k7QBExa6hxOU6qMztojmSPjc893LQ4fde7dg=; b=esMgwUNTdG4v4KvfeHrwXD6+y7
 PisUXVuVdkIcTgnTa3Nk/8q7HdMmIBU0pTVKPL8TCXzub6sdpCBVlRubMd3J0y+Foei6ImPGjQCJC
 qi1jBUyGB4bTEvwsnPYn7w4N83b0+mDtKIz7mNoOYzjGXEER6jjqj4yC7PsOUzTrHr1A=;
Received: from mail-ed1-f49.google.com ([209.85.208.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1l9YSF-0004G1-Pm
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 19:14:03 +0000
Received: by mail-ed1-f49.google.com with SMTP id y8so25331965ede.6
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 09 Feb 2021 11:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1tHDrQ7k7QBExa6hxOU6qMztojmSPjc893LQ4fde7dg=;
 b=akIN38EhQAi1EJYSeLBzpY86D4HcP1JFpL9GOZ+0RTnCkorkEfcVrIAVKTL3jMnG1S
 wB2qolfwaFv21H7u2zEEkvnFpGX1nEHeJ1S4J1sfz5c5YnXEdHBQ4kH64G0jT9/l9/e6
 eD4OPnbfiSTjG9KsSbeEkIcjaKRrzYZYK/x80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1tHDrQ7k7QBExa6hxOU6qMztojmSPjc893LQ4fde7dg=;
 b=bQW1BYeEH5XQ8rN3ugQWxRAJ6J4ZdAiQDqnTzP0oypoaO3QZoUV9wFMNfmJ9VXcrEa
 IHw5ecBQ2Y9t+savDb6QFQ3Xundx4y/iE8V0DqfCaiX9PzuM9g7DtSS30Zz9KmKeHL5R
 HkSAtU7TsNZ/DEwqh4LxYy351C7Fhalx1AfDfVdOb3XepQEMBzuaqBbQmeoEuI4HXSX4
 ol8WVU2dTcC3uiigkoyBTznJuZTAu4Ve9I39J9Gduuka9IObF9lWhTgWdkdYRkLmQvhr
 efu5d9iY8PXT5OBlPN2ZCM1D2EzcESzcWJNvIyqpwJCbyML+wnc1vx1kJObPZBYVHsw3
 Ia/A==
X-Gm-Message-State: AOAM531qruQcu92nfbZuqPlXBDaH2byUzWhYigRPvWp3eSzdtWTjO52v
 9wdIq2p6GWq9puYW6xGRMBMCOydWjDI3Uw==
X-Google-Smtp-Source: ABdhPJy0o1EKyRxGAycou13hNUKiuu7BK/Rtcj3AKyOXZOnmbad1yAwKss/W9lO8rTRxOZYEx7PUQA==
X-Received: by 2002:a05:6512:3743:: with SMTP id
 a3mr14180165lfs.8.1612897618877; 
 Tue, 09 Feb 2021 11:06:58 -0800 (PST)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id n124sm1406191lfd.201.2021.02.09.11.06.57
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Feb 2021 11:06:57 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id f23so12960089lfk.9
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 09 Feb 2021 11:06:57 -0800 (PST)
X-Received: by 2002:a19:c14c:: with SMTP id r73mr13646015lff.201.1612897616810; 
 Tue, 09 Feb 2021 11:06:56 -0800 (PST)
MIME-Version: 1.0
References: <591237.1612886997@warthog.procyon.org.uk>
In-Reply-To: <591237.1612886997@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 9 Feb 2021 11:06:41 -0800
X-Gmail-Original-Message-ID: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
Message-ID: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l9YSF-0004G1-Pm
Subject: Re: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
Cc: CIFS <linux-cifs@vger.kernel.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

So I'm looking at this early, because I have more time now than I will
have during the merge window, and honestly, your pull requests have
been problematic in the past.

The PG_fscache bit waiting functions are completely crazy. The comment
about "this will wake up others" is actively wrong, and the waiting
function looks insane, because you're mixing the two names for
"fscache" which makes the code look totally incomprehensible. Why
would we wait for PF_fscache, when PG_private_2 was set? Yes, I know
why, but the code looks entirely nonsensical.

So just looking at the support infrastructure changes, I get a big "Hmm".

But the thing that makes me go "No, I won't pull this", is that it has
all the same hallmark signs of trouble that I've complained about
before: I see absolutely zero sign of "this has more developers
involved".

There's not a single ack from a VM person for the VM changes. There's
no sign that this isn't yet another "David Howells went off alone and
did something that absolutely nobody else cared about".

See my problem? I need to be convinced that this makes sense outside
of your world, and it's not yet another thing that will cause problems
down the line because nobody else really ever used it or cared about
it until we hit a snag.

                  Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
