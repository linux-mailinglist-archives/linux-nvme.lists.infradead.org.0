Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378591D7937
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 15:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LvcdMaPWfTYD6bSlh8Gv77lXNYBW6OF3f+CBcpNyl2w=; b=RGgIIjWfU34JYA6ezMPWFSBOH
	jbtC8q/tFjOAyx6quqvhXtrY6mkTbYTsjxrr+WI5x5onX4LchIn9wtXs7stRFPV6kz2iV7lcB00+7
	Uvrzzb/SxrLvZb50D6ut1TMVyhQUb3QwFpbApSwHaTb54Xw88zKGb9mtlox83EhYPT/S+5ZSKmpdJ
	f6/NRgmtPFKuHaGnLMjyPwF8i0ipwX/Z4NWG+yGO20ofvzN4QY+LOzOvWTk4CZMA7PgdLbDRnjN6S
	vHTbDcHzlR7qugJu0UlrP7bXWHM+E8+k3QVRrUyPWsswONwvRQq4KAS/Bp0mCmdKscW1rHqfAfTKI
	MLfwGLcLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafR0-00021Z-W2; Mon, 18 May 2020 13:03:59 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafQq-0001s0-Iz
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 13:03:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589807022;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l5Uw8INXLxFUeOD4lUcpKCcpfZirAPiUVd3vzReirZA=;
 b=Gs1AdAY7uUrA/DKVGJuyPtl9gMuO5NQ4SVdkIT1WRyuVTHdFTSa74uTF7JOqjJFiGAl7Uk
 bgjX3RynYFAct5Mb9gEk7xWFBmK76BdFagqyn8eUiUfYcYxwTOZ8bmzahZqbzlX9oItLCA
 VVXcTN0yQEHHupQ5K1OOAg+85zbjKkk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-293-ac9vAGZ0PD2_Ss_ivTgQ8g-1; Mon, 18 May 2020 09:03:40 -0400
X-MC-Unique: ac9vAGZ0PD2_Ss_ivTgQ8g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BA82E107B7C3;
 Mon, 18 May 2020 13:03:39 +0000 (UTC)
Received: from [10.3.112.213] (ovpn-112-213.phx2.redhat.com [10.3.112.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 301105D9DD;
 Mon, 18 May 2020 13:03:39 +0000 (UTC)
Subject: Re: [PATCH] nvmet: nvmet_async_events_process always free async event
 to avoid memleak
To: Christoph Hellwig <hch@infradead.org>
References: <1589382492-9811-1-git-send-email-dmilburn@redhat.com>
 <20200514150535.GA10740@infradead.org>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <1d6cc67a-cbea-42de-b241-a766145a2bfe@redhat.com>
Date: Mon, 18 May 2020 08:03:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200514150535.GA10740@infradead.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_060348_726233_4E0A4AF3 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dwagner@suse.de, chaitanya.kulkarni@wdc.com, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph,

On 05/14/2020 10:05 AM, Christoph Hellwig wrote:
> I don't think we should take the aen off the list if there is no
> command slot available.  So probably something like this instead:

This still leaks:

unreferenced object 0xffff888b9635c4c0 (size 32):
   comm "nvmetcli", pid 4962, jiffies 4294954934 (age 658.257s)
   hex dump (first 32 bytes):
     28 81 f1 81 8b 88 ff ff 28 81 f1 81 8b 88 ff ff  (.......(.......
     02 00 04 00 00 00 00 00 c0 12 e4 42 8c 55 00 00  ...........B.U..
   backtrace:
     [<0000000057d91381>] nvmet_add_async_event+0x57/0x290 [nvmet]
     [<0000000097269b44>] nvmet_ns_changed+0x206/0x300 [nvmet]
     [<00000000ea63c8b2>] nvmet_ns_disable+0x367/0x4f0 [nvmet]
     [<00000000a65f5ee4>] nvmet_ns_free+0x15/0x180 [nvmet]
     [<0000000071fcc228>] config_item_release+0xf1/0x1c0
     [<000000006ba88943>] configfs_rmdir+0x555/0x7c0
     [<00000000118db5e1>] vfs_rmdir+0x142/0x3c0
     [<00000000f75e2a56>] do_rmdir+0x2b2/0x340
     [<00000000b315b784>] do_syscall_64+0xa5/0x4d0
     [<000000002dcd7e5e>] entry_SYSCALL_64_after_hwframe+0x6a/0xdf

But, if we do the same nvmet_async_events_free() it will pass Yi's
test, I sent a v2.

Thanks,
David

> 
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index b685f99d56a1f..0df9300d717d6 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -134,15 +134,10 @@ static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
>   	struct nvmet_async_event *aen;
>   	struct nvmet_req *req;
>   
> -	while (1) {
> -		mutex_lock(&ctrl->lock);
> -		aen = list_first_entry_or_null(&ctrl->async_events,
> +	mutex_lock(&ctrl->lock);
> +	while (ctrl->nr_async_event_cmds && !list_empty(&ctrl->async_events)) {
> +		aen = list_first_entry(&ctrl->async_events,
>   				struct nvmet_async_event, entry);
> -		if (!aen || !ctrl->nr_async_event_cmds) {
> -			mutex_unlock(&ctrl->lock);
> -			break;
> -		}
> -
>   		req = ctrl->async_event_cmds[--ctrl->nr_async_event_cmds];
>   		if (status == 0)
>   			nvmet_set_result(req, nvmet_async_event_result(aen));
> @@ -152,7 +147,9 @@ static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
>   
>   		mutex_unlock(&ctrl->lock);
>   		nvmet_req_complete(req, status);
> +		mutex_lock(&ctrl->lock);
>   	}
> +	mutex_unlock(&ctrl->lock);
>   }
>   
>   static void nvmet_async_events_free(struct nvmet_ctrl *ctrl)
> 


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
