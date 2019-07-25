Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B503757A7
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyQVpC226B6CahEe/PL34hJBmuNhfEFkm6JHCNW9V7o=; b=MvrYv2psvDVJ8l
	gbyDInYGb0Hui6aTPW7OctM+C8qJqaapeC0YurN2JUQYmso5yK6Gv3pQ6nQhARvECzFHInuav7NqP
	gKLEi1w+1vyJVD+sFF7uLlnzGXQnphinfJoVwMpsLKQgRgi6Dpj4hdLQoVABRDeurO/fr1au/1mLs
	1ZBhiZ7sZ0dpgz218Vo2pceVGzTTR5ZQX5t5of39PI3DGMoehk7XQXvf/in7MX5IoJcvjM1CSQZF8
	VtLkNDWkyUigFjUAMSSIzlexhEKieWlsG7TuMMlOUJRrqbirfonp4LDdRP12ST+ZmdyXgFKvt4MQG
	5c7OYTofm7DSlF5mQCXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjCp-0005mP-9z; Thu, 25 Jul 2019 19:15:11 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjCb-0005lu-TH
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:14:59 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqjCQ-0003h1-UD; Thu, 25 Jul 2019 13:14:47 -0600
To: Jason Gunthorpe <jgg@mellanox.com>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-7-logang@deltatee.com>
 <20190725185230.GG7450@mellanox.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <dc151716-d584-35df-0de6-d25c1267be6c@deltatee.com>
Date: Thu, 25 Jul 2019 13:14:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725185230.GG7450@mellanox.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, epilmore@gigaio.com,
 dan.j.williams@intel.com, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me,
 Christian.Koenig@amd.com, hch@lst.de, bhelgaas@google.com,
 linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, jgg@mellanox.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/14] PCI/P2PDMA: Add whitelist support for Intel Host
 Bridges
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_121458_282461_11072738 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christian Koenig <Christian.Koenig@amd.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 12:52 p.m., Jason Gunthorpe wrote:
> On Mon, Jul 22, 2019 at 05:08:51PM -0600, Logan Gunthorpe wrote:
>> Intel devices do not have good support for P2P requests that span
>> different host bridges as the transactions will cross the QPI/UPI bus
>> and this does not perform well.
>>
>> Therefore, enable support for these devices only if the host bridges
>> match.
>>
>> Adds the Intel device's that have been tested to work. There are
>> likely many others out there that will need to be tested and added.
>>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>>  drivers/pci/p2pdma.c | 36 ++++++++++++++++++++++++++++++++----
>>  1 file changed, 32 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
>> index dfb802afc8ca..143e11d2a5c3 100644
>> +++ b/drivers/pci/p2pdma.c
>> @@ -250,9 +250,28 @@ static void seq_buf_print_bus_devfn(struct seq_buf *buf, struct pci_dev *pdev)
>>  	seq_buf_printf(buf, "%s;", pci_name(pdev));
>>  }
>>  
>> -static bool __host_bridge_whitelist(struct pci_host_bridge *host)
>> +static const struct pci_p2pdma_whitelist_entry {
>> +	unsigned short vendor;
>> +	unsigned short device;
>> +	bool req_same_host_bridge;
> 
> This would be more readable in the initializer as a flags not a bool

Ok, will change for v2.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
