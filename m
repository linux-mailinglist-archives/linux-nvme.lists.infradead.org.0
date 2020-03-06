Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A0717C129
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Mar 2020 16:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aNUqanZ+zQWFp9cXtIwnSb1AQWeUw/aqO2MzNZSh8dM=; b=d7T2HiSdexQ6fHz76jrVPbu1l
	GGfZnlKbumK55C0G+vGBwgP+PLywE4AqmEqL+ynsezh7QZCkuI+lXtGWDlTnD0B6KenilCC1AmzH8
	3mnuZXjX7rSRtd1BEkZkLs7unw3O4ED9qHR0I/ZYyrAHmZARyJI5u/tXiO8++0jwqt/dQvMeylCX7
	MeaNwtVG0rdJgN1i/MLB+chdIs75JaljecFbYNv6KxXP5iG0jWVjTwnlKkWoj/ijuj2zQ2LvXf2ZF
	8Bj7q5pv89YHLZPUdnCtaaqg9cQ3NdfBdg/lQJCO1ska+7aus1laNeFmHAU/Di+0/VwYiMwtTYFrF
	fY5TdH7iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAEW0-0003eb-Ve; Fri, 06 Mar 2020 15:03:52 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAEVx-0003dZ-DZ
 for linux-nvme@lists.infradead.org; Fri, 06 Mar 2020 15:03:50 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 07:03:47 -0800
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="287991101"
Received: from ddalessa-mobl.amr.corp.intel.com (HELO [10.254.203.47])
 ([10.254.203.47])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 06 Mar 2020 07:03:46 -0800
Subject: Re: [bug report] NVMe RDMA OPA: kmemleak observed with
 connect/reset_controller/disconnect
To: Sagi Grimberg <sagi@grimberg.me>, Yi Zhang <yi.zhang@redhat.com>,
 linux-nvme@lists.infradead.org
References: <215235485.15264050.1583334487658.JavaMail.zimbra@redhat.com>
 <ef49292b-c39d-2f0b-99ca-2835b6afff97@grimberg.me>
From: Dennis Dalessandro <dennis.dalessandro@intel.com>
Message-ID: <708eb993-2f8b-06b5-2084-23048c24ef4b@intel.com>
Date: Fri, 6 Mar 2020 10:03:44 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <ef49292b-c39d-2f0b-99ca-2835b6afff97@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_070349_469373_178C711D 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: kbusch@kernel.org,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 3/5/2020 3:57 PM, Sagi Grimberg wrote:
> CCing Linux-rdma as I don't think anyone in nvme will
> have a clue to whats going on here...
> 

We will take a look at it. Thanks for forwarding!

-Denny


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
