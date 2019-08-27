Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F4F9F55F
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 23:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IzhG4C/INbb6Ud2/Z5uagQmG3o/9JGr4tnTRaO0cits=; b=TuOS1x+6ly0T6cpxR2EN5WhLL
	qoAoV4kP2+IJXhmgwqAMr9SdGKjN1mXDobPkT08UNm6T04bKOlnvpkhG5Xi5vCZviVac0fyj1+NFz
	IWgtn0KdNOtpw7BwctpJCNA8HY7YK0PJXmAMuFlc/gLkFWpybQ8n8JDPnWK3FPDwKuRhyf4hoIlmA
	lCZA1/S6b8X03r0sQ2T51cKMM25Tlhs8M1nYFXGZ1BfSA7Mylbyl4ARgeXxD4ZNC+HhwoVTgT+4k/
	D/rp06pMSrmjjoZAYDbQqVOTdk0NK9nv8rC8+9gf4bpivbcy5xpqxGjKV9t/1e3SGrr+2r0YoABEp
	H0ESy7rHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jEZ-00006K-Pk; Tue, 27 Aug 2019 21:42:36 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jEQ-000060-AT
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 21:42:27 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 14:42:25 -0700
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="171337340"
Received: from unknown (HELO [10.232.112.84]) ([10.232.112.84])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Aug 2019 14:42:24 -0700
Subject: Re: [PATCH] nvme: avoid race between FLR and command timeout
To: Keith Busch <kbusch@kernel.org>
References: <20190826164736.4707-1-edmund.nadolski@intel.com>
 <20190827161756.GA23183@localhost.localdomain>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <f721fbbc-e242-be53-1611-9d07245d07a4@intel.com>
Date: Tue, 27 Aug 2019 15:42:24 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827161756.GA23183@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_144226_379209_163D9A41 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: keith.busch@intel.com, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/27/2019 10:17 AM, Keith Busch wrote:
> On Mon, Aug 26, 2019 at 10:47:36AM -0600, Edmund Nadolski wrote:
>> This patch syncs queues from nvme_reset_prepare, in order to prevent
>> a race where nvme_timeout can execute between the reset_prepare and
>> reset_done. The race results in an extra call to nvme_dev_disable
>> before nvme_reset_done can complete, which causes controller
>> de-enumeration (from the timeout thread) with the following dmesg:
>> 
>> [  365.427991] nvme nvme3: I/O 6 QID 0 timeout, reset controller
>> [  368.434070] nvme 0000:1a:00.0: enabling device (0000 -> 0002)
>> [  368.434207] nvme nvme3: Removing after probe failure status: -19
>> 
>> The probe fails because the driver can no longer read NVME_REG_CSTS.
>> The driver has to be re-loaded into order to bring back the controller.
>> 
>> The following triggers the race (timout < normal completion time):
>> 
>> nvme format /dev/${1} --ses=1 --timeout=4000 &
>> sleep 2
>> echo 1 > /sys/class/nvme/${1}/device/reset
>> 
>> Note, shutdown_lock is not sufficient to prevent the race, since it
>> is not held across the reset_prepare/reset_done.
>> 
>> Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>
>> ---
>>  drivers/nvme/host/core.c | 3 +++
>>  drivers/nvme/host/pci.c  | 3 +++
>>  2 files changed, 6 insertions(+)
>> 
>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index 4660505eded9..43c12f8c030f 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -3974,6 +3974,9 @@ void nvme_sync_queues(struct nvme_ctrl *ctrl)
>>  	list_for_each_entry(ns, &ctrl->namespaces, list)
>>  		blk_sync_queue(ns->queue);
>>  	up_read(&ctrl->namespaces_rwsem);
>> +
>> +	if (ctrl->admin_q)
>> +		blk_sync_queue(ctrl->admin_q);
> 
> This part can probably go in separately as its own patch.

Will send separately.

>>  }
>>  EXPORT_SYMBOL_GPL(nvme_sync_queues);
>>  
>> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
>> index bf54b128c5a4..845f540f1707 100644
>> --- a/drivers/nvme/host/pci.c
>> +++ b/drivers/nvme/host/pci.c
>> @@ -2786,6 +2786,9 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>>  static void nvme_reset_prepare(struct pci_dev *pdev)
>>  {
>>  	struct nvme_dev *dev = pci_get_drvdata(pdev);
>> +
>> +	nvme_sync_queues(&dev->ctrl);
>> +	flush_work(&dev->ctrl.reset_work);
>>  	nvme_dev_disable(dev, false);
>>  }
> 
> Looks like we'd have a similar problem if a reset is occuring at the
> same time as a suspend...
> 
> I'm starting to reconsider this approach. I believe it works most
> of the time, but maybe underestimating the chance of a low timeout
> command slipping in after the sync.

Does the system provide any ordering guarantees or constraints
wrt pm/blk_mq/pci ops?

Thanks,
Ed












_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
