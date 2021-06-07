Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C9239D282
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Jun 2021 03:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lq3ls-0002uW-Pj; Mon, 07 Jun 2021 01:09:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lkp@intel.com>) id 1lq3lq-0002uN-TI
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 01:09:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uW43Dc7OANqr87R2PWUgai2A4XAyMPdgKOCROTqWewk=; b=UpupandCf3bunUv7dWO8xjOsQl
 Cqr0iKZqPVe8Mobp2sTMnV3bxtli9pDGUGdpPVRMD1xri0QQEgeV/SKBomzz97MiU4/yA0BlJ7bGw
 t8gEO9FyFc1Ajb5KvLeQdw3ACRp507oYLGiHK6+NLa//GezBO4fUZo4Iqwine+GgKDC8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uW43Dc7OANqr87R2PWUgai2A4XAyMPdgKOCROTqWewk=; b=Y2Z7VFas1wzmitA0vnoIfp/ilx
 3DffnkPbg5u9AgKFrpORIllMEP7+InjCSxv2MN6HZpjIbXewso6pfYJkIpkXz72bhn2TPFON7t7FU
 rjABJHhXYBDAA5SGajPdZQy7Ei/ST8mMd+jOPR8RVUFVsVOfLcwv5pmMWSwrOvUd9Y5Q=;
Received: from [192.55.52.120] (helo=mga04.intel.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lq3lh-0002j5-PW
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Jun 2021 01:09:38 +0000
IronPort-SDR: RXwwXOzBXfSlJt02CrPgk1/ty8u2U2pspJVRgg3H5WqdauVGiDQj8b2uWq7OowuwRv/KUsqnOu
 skw9UAAfS3Ng==
X-IronPort-AV: E=McAfee;i="6200,9189,10007"; a="202685398"
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; 
 d="gz'50?scan'50,208,50";a="202685398"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2021 18:07:45 -0700
IronPort-SDR: a7pTNWoz33kObCSVvVUXOIDsbs3Dz9oWKoZp37OB+xjxM3wUI1/WuszOkrnf35bO+3O10+o9ef
 MQwxP4+1HB3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; 
 d="gz'50?scan'50,208,50";a="476040369"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Jun 2021 18:07:42 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lq3jx-00087c-ED; Mon, 07 Jun 2021 01:07:41 +0000
Date: Mon, 7 Jun 2021 09:06:54 +0800
From: kernel test robot <lkp@intel.com>
To: Changbin Du <changbin.du@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <202106070913.SLIBAxBQ-lkp@intel.com>
References: <20210606230922.77268-2-changbin.du@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210606230922.77268-2-changbin.du@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: raw.githubusercontent.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: raw.githubusercontent.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1lq3lh-0002j5-PW
Content-Disposition: inline
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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
Cc: kbuild-all@lists.01.org, linux-doc@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 "Enrico Weigelt, metux IT consult" <lkml@metux.net>,
 v9fs-developer@lists.sourceforge.net, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Changbin,

I love your patch! Perhaps something to improve:

[auto build test WARNING on lwn/docs-next]
[also build test WARNING on linus/master v5.13-rc5 next-20210604]
[cannot apply to v9fs/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Changbin-Du/9p-add-support-for-root-file-systems/20210607-071229
base:   git://git.lwn.net/linux-2.6 docs-next
config: arm-allyesconfig (attached as .config)
compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/96098f751038703cc0fda4f018236d240a86930d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Changbin-Du/9p-add-support-for-root-file-systems/20210607-071229
        git checkout 96098f751038703cc0fda4f018236d240a86930d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/9p/v9fsroot.c:53:12: warning: no previous prototype for 'v9fs_root_data' [-Wmissing-prototypes]
      53 | int __init v9fs_root_data(char **dev, char **opts)
         |            ^~~~~~~~~~~~~~


vim +/v9fs_root_data +53 fs/9p/v9fsroot.c

    52	
  > 53	int __init v9fs_root_data(char **dev, char **opts)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
