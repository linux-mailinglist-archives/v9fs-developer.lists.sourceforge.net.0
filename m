Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A1E67958B
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 11:45:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pKGna-0000HA-EU;
	Tue, 24 Jan 2023 10:45:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1pKGnW-0000Gy-RT
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 10:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0S0JJypSGUR2oSMv0WnfLaYSa/uGN2L/wJT9KVKHt7k=; b=SnoJEgW8435j9zcV6HAWfh9CC8
 bppvQt4pkbGrVonPlez16wrn45NJN0jn51TNcKSjZge4ledGWzwEXmq5rBW8iibsUtVpXtwMYrz6J
 OeDn1qrjkoCOCcQmzKqMSeQLtHcmUEnaMfwAmVuQwnTelVT3oZM3tdR8S8mTY5NZeKVA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0S0JJypSGUR2oSMv0WnfLaYSa/uGN2L/wJT9KVKHt7k=; b=X
 Dhav3rtMQuokj1uIJQ+2nDgwaExaLeQeqw7PFQ32UE91TLVzaKupi2LaHsifCcxcFauwW2gSwxLMh
 qVvJzrmx21XbDBqtgXY+LNV981fBj7aX12K3YBO4b+zhMx3MfnybCi2Jv67h/tNeyaPh4K/bcxofA
 C7Y8k4QEU7HS7U54=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKGnR-0003Yi-TD for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 10:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674557097; x=1706093097;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=9GN09YTe7MMMKDh6Jjnt9HvPyO8WnTDVLFsKBcAcLXM=;
 b=I0bC0CAcHGg7QAo/w8WtydyBUG1avWOBhCxpadfen9a4qMjIXJb8OFST
 XoDIZsAEzbIBRiG4Ue2lnd5Ce416Td/V6mgalmFvwcpDbOcP42Jxw+6ji
 o6fmU4q6kWvhPA9w07K38T7Kqjv6e1EupdIJ9b24QRVeZo9ltTmmKJHF4
 ljjiZlfoJdsbaH5hvLYyIPK069ceHDg3Z2S9DzQcSFHNcmiOQMPTVrh7I
 vB6h6f4WjqpqVe9+aoTJ/HJ4XC5EPk5QPCTLw7K2KOqrS1xeGRI47yd0s
 +uTo9NXUpteFegRcVClWjLWfmbGdhu8VmWqJLCvkA3LGOJfwwFmVzT5iW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="328356977"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="328356977"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 02:44:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="907438513"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="907438513"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jan 2023 02:44:50 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKGnJ-0006LU-2a;
 Tue, 24 Jan 2023 10:44:49 +0000
Date: Tue, 24 Jan 2023 18:43:58 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Van Hensbergen <ericvh@kernel.org>
Message-ID: <202301241856.YAPUu0wS-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tree:
 https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
 ericvh/for-next head: 2245aefc0a6f35eb2a9ad0afa8958c3d2fa694ea commit:
 7cde5b8cea83cb4f289ad3b1183656836b14fa2b
 [4/12] Consolidate [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pKGnR-0003Yi-TD
Subject: [V9fs-developer] [ericvh-v9fs:ericvh/for-next 4/12]
 fs/9p/vfs_file.c:590:42: warning: 'v9fs_file_vm_ops' defined but not used
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
Cc: v9fs-developer@lists.sourceforge.net, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git ericvh/for-next
head:   2245aefc0a6f35eb2a9ad0afa8958c3d2fa694ea
commit: 7cde5b8cea83cb4f289ad3b1183656836b14fa2b [4/12] Consolidate file operations and add readahead and writeback
config: x86_64-rhel-8.3-func (https://download.01.org/0day-ci/archive/20230124/202301241856.YAPUu0wS-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git/commit/?id=7cde5b8cea83cb4f289ad3b1183656836b14fa2b
        git remote add ericvh-v9fs https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
        git fetch --no-tags ericvh-v9fs ericvh/for-next
        git checkout 7cde5b8cea83cb4f289ad3b1183656836b14fa2b
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash fs/9p/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/9p/vfs_file.c:590:42: warning: 'v9fs_file_vm_ops' defined but not used [-Wunused-const-variable=]
     590 | static const struct vm_operations_struct v9fs_file_vm_ops = {
         |                                          ^~~~~~~~~~~~~~~~


vim +/v9fs_file_vm_ops +590 fs/9p/vfs_file.c

fb89b45cdfdc8b Dominique Martinet 2014-01-10  588  
fb89b45cdfdc8b Dominique Martinet 2014-01-10  589  
7263cebed9fada Aneesh Kumar K.V   2011-02-28 @590  static const struct vm_operations_struct v9fs_file_vm_ops = {
7263cebed9fada Aneesh Kumar K.V   2011-02-28  591  	.fault = filemap_fault,
f1820361f83d55 Kirill A. Shutemov 2014-04-07  592  	.map_pages = filemap_map_pages,
7263cebed9fada Aneesh Kumar K.V   2011-02-28  593  	.page_mkwrite = v9fs_vm_page_mkwrite,
7263cebed9fada Aneesh Kumar K.V   2011-02-28  594  };
7263cebed9fada Aneesh Kumar K.V   2011-02-28  595  

:::::: The code at line 590 was first introduced by commit
:::::: 7263cebed9fadad719063fdc8bba7085cf2c080d fs/9p: Add buffered write support for v9fs.

:::::: TO: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
:::::: CC: Eric Van Hensbergen <ericvh@gmail.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
