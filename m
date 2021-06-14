Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FB53A5B46
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Jun 2021 03:10:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lsb6x-00020e-JY; Mon, 14 Jun 2021 01:09:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <changbin.du@gmail.com>) id 1lsb6w-00020T-Lf
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 01:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lfTRNFalgvE8W3BaBubJpxlJYdBX6Ni/M9RnLGhDGdg=; b=QNOuRT7GId3NEp9b9vzrtEt2hq
 4lN+Mn8uMDe6ywxTasWKgtoJ8ZLXrrfTrHeFbz7PxL+coT6UJRJJXkcxa1SWu32tmtMKksrc58SQn
 QnJ3OwaHpU5IahuDatqfQw86rU1P6pHHbAwlRPB+Xdtu4xL6frGKlN+4AzHAuuPF0wLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lfTRNFalgvE8W3BaBubJpxlJYdBX6Ni/M9RnLGhDGdg=; b=adVC+rMrWjLSOmcbH5B5dAdm3I
 MmNPxZebWB1AZw3+KXJNlBwJDflosIjs4LzuBaYQACa/rneD2gcZqw81th4exp26n1aHthcAZehlN
 eBio+vwplgW6mEri9g4cRi+w40PJ9fDTxf9XaneSUflF5UR8c0Q+iiuBsH9qrSY0+2hM=;
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lsb6m-0001zk-Tz
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 01:09:54 +0000
Received: by mail-pf1-f169.google.com with SMTP id z26so9335134pfj.5
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 13 Jun 2021 18:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lfTRNFalgvE8W3BaBubJpxlJYdBX6Ni/M9RnLGhDGdg=;
 b=giJUOc64A/HReLaviyDuLGgkjEioiHD2twGRkxCH2mil9TuqvPeHO8TPDcMQ3LUbT7
 xJA7Jozne4xmbp/w3x68hJ/5VyG/u/3TfbBTeRqEuU335lR7KTMDYoRDIDGaIm/28JMO
 fzI6R38pdIBZo6Xv3uU13gxuzQvLcEMMlfekdSOe2HOk6wSR3ZzG55RYaVaKCD/3xRWT
 WNiFFUleWT83HkijsPXrc6vgjgkz+XOzeQRY6wEYN6bMKtBR51hLBcTHZwWVsrZdBSKU
 1tVH1T4KDxLoyBk1RFZ/6ZHd7OVBi1vN6jI96lGEGNU5bhzlKiy2958fW2BSQQun3pug
 fbnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lfTRNFalgvE8W3BaBubJpxlJYdBX6Ni/M9RnLGhDGdg=;
 b=cO8+AtlMXukC7RJ5lJYmZcRa2vGP9nL4b4HskAZE9Srp59VnMMxIZcZwlc1/UP6gGB
 OrkCBGROS9H//bTM6zq0VRzy+HHXgFmO87Z9/xIpEb7qyIt/ijiVH98wOowk5ZIEmoeU
 cbHzGx/Gqz2xw1yxufg34W12zjtzDfaq5xVgF7uQFcGqieg/JfsH5sHarLnPCTe+5PaE
 quVr2DOl/vz3w+o8WfO8njfbotNyNk7N9F34q1ZIUdE4l5+12f1d2Kus5XVTffVQNdl3
 DXDQFfIZm5CeKrHI3ThwrsUzDdcEMrVux5vGsYIIuWZWiD46+ft6skM5RAVm+jsW7P2Q
 VsvA==
X-Gm-Message-State: AOAM5308NO/rZyRRnPZDxSu/1llugDSBo7gHVUoYEzlt9ypFfyOoBIlU
 TTUi27u5R5bX2w3LNIqEpTM=
X-Google-Smtp-Source: ABdhPJyXxemMmvRcWWFjy/8zrZR5cT5hqRdDgziWJi6fwTFTllyV7zTq3nilU3KOGZZEE747GyXaig==
X-Received: by 2002:a63:5f46:: with SMTP id t67mr14925506pgb.37.1623632980544; 
 Sun, 13 Jun 2021 18:09:40 -0700 (PDT)
Received: from mail.google.com ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id t1sm10303269pjs.20.2021.06.13.18.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Jun 2021 18:09:39 -0700 (PDT)
Date: Mon, 14 Jun 2021 09:09:29 +0800
From: Changbin Du <changbin.du@gmail.com>
To: kernel test robot <lkp@intel.com>
Message-ID: <20210614010929.mwvmpdy3dv7k2xnh@mail.google.com>
References: <20210606230922.77268-2-changbin.du@gmail.com>
 <202106070913.SLIBAxBQ-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202106070913.SLIBAxBQ-lkp@intel.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lsb6m-0001zk-Tz
Subject: Re: [V9fs-developer] [PATCH v3 1/3] 9p: add support for root file
 systems
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, kbuild-all@lists.01.org,
 Jonathan Corbet <corbet@lwn.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, "Enrico Weigelt,
 metux IT consult" <lkml@metux.net>, v9fs-developer@lists.sourceforge.net,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jun 07, 2021 at 09:06:54AM +0800, kernel test robot wrote:
> Hi Changbin,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on lwn/docs-next]
> [also build test WARNING on linus/master v5.13-rc5 next-20210604]
> [cannot apply to v9fs/for-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Changbin-Du/9p-add-support-for-root-file-systems/20210607-071229
> base:   git://git.lwn.net/linux-2.6 docs-next
> config: arm-allyesconfig (attached as .config)
> compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/96098f751038703cc0fda4f018236d240a86930d
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Changbin-Du/9p-add-support-for-root-file-systems/20210607-071229
>         git checkout 96098f751038703cc0fda4f018236d240a86930d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/9p/v9fsroot.c:53:12: warning: no previous prototype for 'v9fs_root_data' [-Wmissing-prototypes]
>       53 | int __init v9fs_root_data(char **dev, char **opts)
>          |            ^~~~~~~~~~~~~~
>
This just follows the existing rootfs support manner. This function doesn't have
a dedicated header file to place. So I think we can ignore this warning.

> 
> vim +/v9fs_root_data +53 fs/9p/v9fsroot.c
> 
>     52	
>   > 53	int __init v9fs_root_data(char **dev, char **opts)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Cheers,
Changbin Du


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
