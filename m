Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D805C68BF11
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 15:00:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP22T-0001nT-BU;
	Mon, 06 Feb 2023 14:00:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pP22Q-0001nM-AA
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 14:00:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TvpMWIkWPgiaTSCKGDn7fS3CqWOlNCVJgJ81hIVnEsE=; b=FHjVVgIanywZeylDLPczaape+1
 I/ixqzIKUJ0R0d8PWw/vVmKQs77KmnLn/8Xl2EyPR2NkyxdoLyHa9CzOe429V1xW3t969IDotykwx
 Vh59gjpfIIPbeMPWHMgEA2mTRhybivlXS48fV98DLd5avFwiAAengV/uNh08EK3hB/D8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TvpMWIkWPgiaTSCKGDn7fS3CqWOlNCVJgJ81hIVnEsE=; b=DKcdS1PR253IouZSce295BnA4v
 sUqKCPawm2ILVyelzrVI8YYOnYNKDqXRyDgXBsdAkp/5Y5g7hhLdn/oGay0jIlQ1ScJu21PGpsbO6
 Cq7qVxeF7EUFeN/AzfxCYX0gm3tj+pWxuQ3K/IAlfBgj9IDcrbDZyTO/kCvSfRHrsOUU=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pP22L-00CbJ7-Gn for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 14:00:04 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 m16-20020a05600c3b1000b003dc4050c94aso8859843wms.4
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Feb 2023 06:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TvpMWIkWPgiaTSCKGDn7fS3CqWOlNCVJgJ81hIVnEsE=;
 b=CXxTAKiN7NSNozbVdUVI/XbC0zl4jDX8J5E4z5Fsa8qOyQuy4lBUZd6wibPA/X01pb
 fcXX/nTinYe29xLa/Ev9bAx+TB7D0l7MPUVqxBWpz8xcyV53wnwRMZoyshj30veqTJPW
 qjwKOBvlgd3Q6s8m+lSSng2jfjlkM5yhvbGzXthua/GyGC+ZLM+xUVZqwEK2hucBfJeO
 xzfOc6S8tPPe16RVSCh1O/Vzrw/1x9PrsEgK6LYD3um1f/kqHTryo/6veEBkNiAiiqa7
 vm/GrZCd16N26DjRz7NJWN1QJT5RFKRb/vWIwAjdKpwKfXC/7vJqGn/OCWj0EtZ/Y2wW
 /C8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TvpMWIkWPgiaTSCKGDn7fS3CqWOlNCVJgJ81hIVnEsE=;
 b=rrw3E6bkBhZxKaF7n6D9gmXoUiFYh3T6Ssm2IYFmt05UmOnkLJW5qCujR/P0QJuxVv
 OvNhwaMNKvck3zi6wpqukEpr3WzsClij/p/PN0sFqkpyxi68Nz+lVhnmSLU2LrlhdffS
 vGCpvvVcbtMmkO32E7sdO+Dg68jAaAI6LIQJAJm3rULbz+M9Z3ooFLDI6Yrbws5UWXOK
 c71PuE43l99E0uwxAtVJdHzCw1LGrQhUGGLUSfnq5rnL6J8TGotD3MdU/cqWQqZEI81i
 EjvuxIWeWs4QKFFuG9Od2OE8vNo7+m8SU6KunoKvS5AB3OSbek/ZXlbRDoNNQN193I8d
 xrXg==
X-Gm-Message-State: AO0yUKXuH/sXM9EP0P5MET0TzIJmjVhTJslxMUT/M/doiTzf8dvivqrW
 2cVEWKSuvkQS0NFz1D7BtlBBES+W8XkNk9q4z98=
X-Google-Smtp-Source: AK7set+16li3wVaqlh7UBkYFjBb9IajVHsqdrON/w7XnKzBu+q3awqQJx7nbN5AF5WrRIYwrKXZid9WSj2t9rbqGcpI=
X-Received: by 2002:a05:600c:4fc2:b0:3d3:5d0f:6dfd with SMTP id
 o2-20020a05600c4fc200b003d35d0f6dfdmr787430wmq.87.1675691994956; Mon, 06 Feb
 2023 05:59:54 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <9010570.AfT4dvHSuA@silver>
 <CAFkjPTkcGC_eBp8Db2b48rtbFads+2KGkD1DZRL=C6k-4uX0oA@mail.gmail.com>
 <3428263.euj80CISbX@silver>
In-Reply-To: <3428263.euj80CISbX@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 6 Feb 2023 07:59:43 -0600
Message-ID: <CAFkjPT=_SRORm=J9sxx0CxAWOGvKft-ZXhtNseHm5NNpv9TrLg@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 6, 2023 at 7:46 AM Christian Schoenebeck wrote:
 > > Can't we just close old pages when a certain number is piled up?
 Originally
 I > assumed that the generalized, shared cache code would [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pP22L-00CbJ7-Gn
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 6, 2023 at 7:46 AM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> Can't we just close old pages when a certain number is piled up? Originally I
> assumed that the generalized, shared cache code would do that automatically at
> a certain point.
>

Indeed, I'm sure that's there but probably only once the page cache
approaches the memory limits.  However, that behavior should be
uncoupled from the fids themselves anyways, fids really should only be
there for open-files and even if we have writeback-fids, they should
only be there for dirty open files (although have to keep them for all
open-files because of the weird open without re-open permissions
behavior).

       -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
