Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0DA3DB89C
	for <lists+v9fs-developer@lfdr.de>; Fri, 30 Jul 2021 14:29:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m9RdN-0002pz-32; Fri, 30 Jul 2021 12:29:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1m9RdM-0002pk-IP
 for v9fs-developer@lists.sourceforge.net; Fri, 30 Jul 2021 12:29:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KoGVkv7H3/+ygZF2TyDEKy9CxxMUqYhhWlGnltJvuyM=; b=mEog9bSE8rAf9bk0pV8OTuC6OC
 JmfxrvBrZGzL8tKX3jK8SaZuV7Zf+uXHs4In+MRANCmMgVlWNYxiLu0QRRUIpkc01zaYOwX5WLmMX
 hyFcu1NkENkKuCfgKjDSJEUKdHMv2R2CrGmPlZ/S5Jk67erN/w0PHyGe2qPJt45LkXmQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KoGVkv7H3/+ygZF2TyDEKy9CxxMUqYhhWlGnltJvuyM=; b=WyGl0xJ5yaR2Dmg+BJ3IthjbOf
 gIKRYvX3/suTHF1YA8Rb2BhQCTt2zm1M6Gr9q7LEVfEfxRqh1cMqejOxViZh1FmUu+J1D9EpdnuXz
 0k6d7Q3149QP+2OKb85YEJYsHrjgNlWdMRY+iS0p+vjBdD7TvEv4n/HQ7RkJpHKEVx6Q=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m9RdJ-007lhN-Sx
 for v9fs-developer@lists.sourceforge.net; Fri, 30 Jul 2021 12:29:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1627648131;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KoGVkv7H3/+ygZF2TyDEKy9CxxMUqYhhWlGnltJvuyM=;
 b=b+vH/uC9ZQ+PEbd/2HtVqZeYsMaJ0u9fiZjio+hBHXFLm9ky3d3ztn7ofACWBVUyyxMjVF
 ZPke5W66mHdKmCPi6x4nx9PW7j6UifmwHTEjSwj2RyZ8N+x3LsnuX/daXbLr/fM7UlrNNN
 y+79wMhjuOCtHbr9ud/OmEOElErcdwY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-567-pZHFfejSPfasBYxYWzJMww-1; Fri, 30 Jul 2021 08:28:50 -0400
X-MC-Unique: pZHFfejSPfasBYxYWzJMww-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B47E6190A7A5;
 Fri, 30 Jul 2021 12:28:48 +0000 (UTC)
Received: from horse.redhat.com (unknown [10.22.32.228])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E6465779D0;
 Fri, 30 Jul 2021 12:28:47 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 8652D22037A; Fri, 30 Jul 2021 08:24:18 -0400 (EDT)
Date: Fri, 30 Jul 2021 08:24:18 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Message-ID: <YQPvcilZ09yByXb5@redhat.com>
References: <20210714202321.59729-1-vgoyal@redhat.com>
 <20210714202321.59729-4-vgoyal@redhat.com>
 <YQNOY9H/6mJMWRNN@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YQNOY9H/6mJMWRNN@zeniv-ca.linux.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m9RdJ-007lhN-Sx
Subject: Re: [V9fs-developer] [PATCH v3 3/3] fs: simplify
 get_filesystem_list / get_all_fs_names
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
Cc: miklos@szeredi.hu, linux-kernel@vger.kernel.org, virtio-fs@redhat.com,
 stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Jul 30, 2021 at 12:57:07AM +0000, Al Viro wrote:
> On Wed, Jul 14, 2021 at 04:23:21PM -0400, Vivek Goyal wrote:
> 
> > +static int __init split_fs_names(char *page, char *names)
> >  {
> > +	int count = 0;
> > +	char *p = page;
> >  
> > +	strcpy(p, root_fs_names);
> > +	while (*p++) {
> > +		if (p[-1] == ',')
> > +			p[-1] = '\0';
> >  	}
> > +	*p = '\0';
> > +
> > +	for (p = page; *p; p += strlen(p)+1)
> > +		count++;
> >  
> > +	return count;
> >  }
> 
> Ummm....  The last part makes no sense - it counts '\0' in the array
> pointed to be page, until the first double '\0' in there.  All of
> which had been put there by the loop immediately prior to that one...

I want split_fs_names() to replace ',' with space as well as return
number of null terminated strings found. So first loop just replaces
',' with '\0' and second loop counts number of strings.

Previously split_fs_names() was only replacing ',' with '\0'. Now
we are changing the semantics and returning number of strings
left in the buffer after the replacement.

I initilaly thought that if I can manage it with single loop but
there were quite a few corner cases. So I decided to use two
loops instead. One for replacement and one for counting.

> 
> Incidentally, it treats stray ,, in root_fs_names as termination;
> is that intentional?

Just trying to keep the existing behavior. Existing get_fs_names(), also
replaces all instances of ',' with '\0'. So if there are two consecutive,
',', that will result in two consecutive '\0' and caller will view
it as end of buffer. 

IOW, rootfsnames=foo,,bar will effectively be treated as "rootfsname=foo".

That's the current behavior and I did not try to improve on it just
keeps on increasing the size of patches. That's probably an improvement
for some other day if somebody cares.

Thanks
Vivek



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
