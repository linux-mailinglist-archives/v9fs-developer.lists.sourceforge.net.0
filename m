Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F6C40B56C
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 18:55:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQBiM-0003Tt-Jp; Tue, 14 Sep 2021 16:55:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <torvalds@linuxfoundation.org>) id 1mQBiL-0003Tl-70
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 16:55:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uU34i+EgJe3tqn17AWoGwVGTTIh0KVlY0SraTTmp6T0=; b=lV4ZydU8O+4/nH8089aiUdlk59
 7IB+R07y2o3uzP3Y1RIeFEg6s2NY5nOunNNMM3oXQLjE5GQ8ccmuI0Y6izcjSvkMtGceSQhMvXNlx
 YJCDo7kDHCOMtYMXd7FXOYIlTooXZlsWZLNfIvOuC34zz9SK98SRV3UDNtTa00mESx3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uU34i+EgJe3tqn17AWoGwVGTTIh0KVlY0SraTTmp6T0=; b=mTvYVhAdZ8HCslTJaqVPp9tqbf
 IFhMvP1SHknp2EIo6V6YXZKOzuerBlkRPkJR+oZtbhX/ebzeZHLWdSdmiMq8WX1vhaq54XSZicdZ/
 ItqiYH9CtOLMRtVVEBRE6bqLjjCNLHh3dp3xaVuvVBDML0PjUfkdjBl5xU9rm1rIJ7TI=;
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mQBiK-00AbOA-Jn
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 16:55:21 +0000
Received: by mail-ej1-f47.google.com with SMTP id b10so23734904ejg.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Sep 2021 09:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uU34i+EgJe3tqn17AWoGwVGTTIh0KVlY0SraTTmp6T0=;
 b=VZdty0cyn24mKo+cOeBnS1zUwWEVr/Aq14PaZvBBUD6vKS7TpA6mbyHIis/pVaXAaf
 SJ1YKxtYZYsZj/EY0JHr31tuvOq/g1o7mjxt6H1zfFHVSNCDSLB6nO1xycpBsN8+GLla
 CROAP4iHjqNA3Dw+oLPHZ225XyXcBn1WLfKpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uU34i+EgJe3tqn17AWoGwVGTTIh0KVlY0SraTTmp6T0=;
 b=5JdBXozbgZNduZuT0e+bNGxID2BrPKpK6urEsj2ocVVAzj9OLPBMzYbkbJ1tQn4K3w
 HXuemU0VdwVVSHFn5DwAQZaAXurvPhG0G+zf8M/GItdNulvbhghhwoO602w0cBzTkWaK
 Tw3dWgeLXjmFbMzNg5SAhTkCpTrQrSnHv4D4xSrEDSuMLWjia7jptBtIfbxzN9FJNfuS
 eur/LdkNYOnM7AfX718+Tn+9SzqQYHLLclW0yL5UxtgJA56zB1EScufrG++ULXx7JMbH
 0FWqf5JUWV5EV3d9vq7rtZNKT6Ht2tuS+biCdbhOevwfdclMpsjKW1kI4Vs9qT2b4cpf
 WKgA==
X-Gm-Message-State: AOAM531uP3FVh8rcC0sue62/1I7DGP8M3ukrhTkX32DEp2/nEJ3kUtIH
 7k/qmKUErTLkz+RZO74jbFNBX2Zjewdh3j2MSoc=
X-Google-Smtp-Source: ABdhPJxffTd+/PIIooj6oGjqT8uuF9lm1j+OrBRROWGIDsMb0RZFAComa6awr4LItnTl/RGsvDYuWQ==
X-Received: by 2002:a17:906:a0da:: with SMTP id
 bh26mr19060781ejb.505.1631637018372; 
 Tue, 14 Sep 2021 09:30:18 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id w3sm5553285edc.42.2021.09.14.09.30.18
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Sep 2021 09:30:18 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id t8so16176935wrq.4
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Sep 2021 09:30:18 -0700 (PDT)
X-Received: by 2002:a2e:b53a:: with SMTP id z26mr15485756ljm.95.1631636661566; 
 Tue, 14 Sep 2021 09:24:21 -0700 (PDT)
MIME-Version: 1.0
References: <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
 <CAHk-=wiVK+1CyEjW8u71zVPK8msea=qPpznX35gnX+s8sXnJTg@mail.gmail.com>
In-Reply-To: <CAHk-=wiVK+1CyEjW8u71zVPK8msea=qPpznX35gnX+s8sXnJTg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 14 Sep 2021 09:24:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgR_unCDRZ+8iTb5gBO6bgRkuS4JYBpi25v12Yp6TzWVA@mail.gmail.com>
Message-ID: <CAHk-=wgR_unCDRZ+8iTb5gBO6bgRkuS4JYBpi25v12Yp6TzWVA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 14,
 2021 at 9:21 AM Linus Torvalds <torvalds@linux-foundation.org>
 wrote: > > Call it "fallback" or "simple" or something that shows the intent, 
 but > no, I'm not taking patches that intro [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.47 listed in wl.mailspike.net]
X-Headers-End: 1mQBiK-00AbOA-Jn
Subject: Re: [V9fs-developer] [RFC PATCH 0/8] fscache: Replace and remove
 old I/O API
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, CIFS <linux-cifs@vger.kernel.org>,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Sep 14, 2021 at 9:21 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Call it "fallback" or "simple" or something that shows the intent, but
> no, I'm not taking patches that introduce a _new_ interface and call
> it "deprecated".

Put another way: to call something "deprecated", you have to already
have the replacement all ready to go.

And if you have that, then converting existing code to a deprecated
model isn't the way to go.

So in neither situation does it make any sense to convert anything to
a model that is deprecated.

          Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
