Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFFD2CA6EB
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 16:24:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kk7Vl-0007uP-1l; Tue, 01 Dec 2020 15:24:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <toke@redhat.com>) id 1kk7Vk-0007uJ-6b
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 15:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I9sbNjqqnuhUn3pfDAQYhxdjMyqtp7UmixLKvXNQJKU=; b=VIel7FypyNsBI6Scny6YMLKdO
 8JLiN8tjI+n63rv4kMXzafeZLmOoKuQXak4iesPRxM02e1w9cJgJizqaXlgvQjBbG1ZE9Aj4pF/G0
 8gqXX8RTkzCtekknHJraOMRpw+Aqmn4p9knFYvms1x5VpFjlQsu+o6QCKkYI3gtEf7V5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I9sbNjqqnuhUn3pfDAQYhxdjMyqtp7UmixLKvXNQJKU=; b=AjbxM42zGSotoCuiPp5rBQkOwQ
 eUDRrOpCUES0rN/YMGsRCR9Tcqr8mZlrB4nXEl/N2omUQHQ0Z5a7A+vioKcuO8qDDX0Kx2G0yorB6
 3DQTGtvfXH3v4fRzk898ea+pIGIaRSnc563K8QSj7c7c522a1J74B5Dfsb3RWJqvPQkQ=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kk7VV-00EBia-Kl
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 15:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606836231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=I9sbNjqqnuhUn3pfDAQYhxdjMyqtp7UmixLKvXNQJKU=;
 b=CQ2aSOY8h3JI/8lCcafFEy/7HLjuWJk+e68wYiDM9mvpDdGvj19q3vKLfkErCzjlV3d1j+
 6NXDJ2Jdwt88d29h17p5vFog5Ra2vjZmPJzejgiOSFwE4S1VlwzqaD+rhURRUTK9ReY+me
 o2AeddpZB1CHD4l4ZbTm2mzYJyi9JpE=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-DApnyie5PD2ONy6L5sbkNw-1; Tue, 01 Dec 2020 10:23:50 -0500
X-MC-Unique: DApnyie5PD2ONy6L5sbkNw-1
Received: by mail-qk1-f197.google.com with SMTP id b11so1619061qkk.10
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 01 Dec 2020 07:23:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=I9sbNjqqnuhUn3pfDAQYhxdjMyqtp7UmixLKvXNQJKU=;
 b=rSR7GucQ/63sROGfzXV7XtPXQyix3wghzrV7UKTlx72UkFGw9tj8SNNgN2pEvjzQp6
 eE1jk05XpNluZs+nKN9CGajBlY8l7wrsLW8Gfvw2w9VHNXnEvDUbKqwKY+f+r64Foy94
 9OCDvoHnkPZyyhBaYlyA9V0VMLdAdQUlX1st0AjFx/FQsh8qOR4hh2nPQQ6fhdOCFHb+
 ylTu5kxpEhjUdXZckNMEh0oITdJJBGxdWTSF8YChB/oqhCr9Lzz52qEl6UKvsk4+0Yx5
 GXrQJ8XBaknNt+WcMXPxz9K9FiQym2LTZWKAOUCQLQIsEagBXY3eq8PQboenQ/DMkR2H
 q60w==
X-Gm-Message-State: AOAM533E4nFtHfKzuFyFPcRIUO7KP2dzIlSJHZ3uJBuoksk8JLUcEb0J
 Z2KbtgmoblzVqjwf3Wei3fQ2ATjLFIN0g2rZB7VlsvguMWeVHmKbexaJba6VpavQJX22VVy3sJl
 3obVh6qRfNlgEwRkJC9JgfZQsVjYRPMoaYq8=
X-Received: by 2002:ac8:5649:: with SMTP id 9mr3271701qtt.379.1606836229741;
 Tue, 01 Dec 2020 07:23:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx03KfRD1Zo4WhjgMz/x6FBH9v7n3Yqs1+bdU+xqGYVZ9+xh3PQY54TeuOSiqY4WeG4oYqJBQ==
X-Received: by 2002:ac8:5649:: with SMTP id 9mr3271622qtt.379.1606836228896;
 Tue, 01 Dec 2020 07:23:48 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id o8sm2375120qtm.9.2020.12.01.07.23.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 07:23:48 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 563CF182EF0; Tue,  1 Dec 2020 16:23:45 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dominique Martinet <asmadeus@codewreck.org>
In-Reply-To: <20201201151658.GA13180@nautica>
References: <20201201135409.55510-1-toke@redhat.com>
 <20201201145728.GA11144@nautica> <20201201151658.GA13180@nautica>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 01 Dec 2020 16:23:45 +0100
Message-ID: <87mtyx1rem.fsf@toke.dk>
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
X-Headers-End: 1kk7VV-00EBia-Kl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> writes:

> Dominique Martinet wrote on Tue, Dec 01, 2020:
>> > Since generic_file_splice_read() seems to just implement splice_read in
>> > terms of the read_iter operation, I simply added the generic implementation
>> > to the file operations, which fixed the error I was seeing. A quick grep
>> > indicates that this is what most other file systems do as well.
>> 
>> Good catch, might as well do that.
>> I'm surprised you didn't hit the same problem with splice_write?
>> 
>> I see iter_file_splice_write being used for it on many filesystems,
>> it's probably better to add both?
>
> Yeah, I confirm both are needed (the second for the pipe -> fs side)

Yeah, makes sense; I was only testing with a very specific use case
where a file is being passed to the kernel with sendfile().

> This made me test copy_file_range, and it works with both as well (used
> not to)
>
> interestingly on older kernels this came as default somehow? I have
> splice working on 5.4.67 :/ so this broke somewhat recently...

Huh, no idea; this is my first time digging into filesystem code, I
normally do networking and BPF :)

> I'll add an extra patch with the second and take your patch.
> Thanks!

Awesome, thanks!

-Toke



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
