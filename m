Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6048C13FBFD
	for <lists+linux-nvme@lfdr.de>; Thu, 16 Jan 2020 23:06:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gTs3SmuPethgxZDL74JEglC+la7VZ9TME+R+MZngNVY=; b=XOvJqskXljmGg5FUHtBIauKpj
	Sc4ogAhKnTCFe3MktmftQHD9/hdbU/Tac4ULoAQHGe6t2fWbbeH2jkEK1J46NSBsDmbpcIs3QKEvH
	AbT50T+qT49XA8ZvAFuH6YEGoC2EX1jNUNBHW0tQ0Dw5XHoSfVJM4sszNuBgPUSz7peoS1D/ggCY3
	ryEaSP9iIC23IusNWQSvpzOYYRpn/zjxSMb74UgkqseJh5rxSQuEzWZGXmAdegqQUfCjdBl+y0Gp5
	23fKNhk+TA1jA/oafwGjdjLRhLBeJEwp9jLN8B3xMt3I3uJyBQFLhbJ9u4rcPDnufZnXpCa2QnhOS
	MjX/ME9AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isDHw-0008PH-B4; Thu, 16 Jan 2020 22:06:52 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isDHn-0008Og-DW
 for linux-nvme@lists.infradead.org; Thu, 16 Jan 2020 22:06:49 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 14:06:41 -0800
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="218694742"
Received: from edmundna-mobl.amr.corp.intel.com (HELO [10.254.102.222])
 ([10.254.102.222])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 16 Jan 2020 14:06:41 -0800
Subject: Re: [PATCH] nvme: clear stale nvmeq->tags after tagset free
To: Keith Busch <kbusch@kernel.org>,
 Edmund Nadolski <edmund.nadolski@intel.com>
References: <20200114181745.2297-1-edmund.nadolski@intel.com>
 <20200116160602.GA28993@redsun51.ssa.fujisawa.hgst.com>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <0ff9ee57-0211-0170-7c58-a6c5d9354beb@intel.com>
Date: Thu, 16 Jan 2020 15:06:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200116160602.GA28993@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_140643_496912_4B959AF9 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 1/16/2020 9:06 AM, Keith Busch wrote:
> On Tue, Jan 14, 2020 at 11:17:45AM -0700, Edmund Nadolski wrote:
>> +static void nvme_exit_hctx(struct blk_mq_hw_ctx *hctx, unsigned int hctx_idx)
>> +{
>> +	struct nvme_queue *nvmeq = hctx->driver_data;
>> +
>> +	nvmeq->tags = NULL;
>> +}
> 
> If you've multiple namespaces, disconnecting one of them will cause the
> shared nvmeq to have NULL tags, which will crash the kernel on the very
> next CQE read.

Currently it crashes with just a single namespace, because the nvmeq->tags is 
still pointing into a tagset that was previously released by calling 
nvme_free_tagset() from nvme_reset_work().

Perhaps the driver should not free the tagset unless & until there are no more 
namespaces?  Is nvme_remove_namespaces() supposed to ensure that?

Thanks,
Ed

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
