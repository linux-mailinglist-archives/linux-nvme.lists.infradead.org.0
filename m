Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630C01F70BD
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jun 2020 01:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRYQ3UKzzD3fWcSm6t1PxoHzCBRsgFB5ilLlG3RQLGU=; b=YBHWa7rvr4A74f
	YLytcoOr9zeDN/VV+As8vlRD0MwTmuoIWsjpuz3r7rAkGrxTQ0IRwu0Tek8jbgvd1xqUhjCqOfCbQ
	AqSLvO/0lYa3UdiCiB1Oz91jsjB+UoeYq4i/WVaW3JmnU++Ey/THDcJO4cFOreD0hcsB20jExCDIu
	NaMUnz2bwTTEXYBp2x9gDrAgSEXjx/cjSHvsjifF3sQ1TPkVB+2LwdxI5UdCYGcKEb2W+av8B25Pb
	iKdEefIJpSCUIucMDp8mumD+OPZ1XA98JpuGnAXNn7sEtWloZxNenueDuNisZb+XIzcEr5PNsHJHC
	0pKbZTITjFZedes0aRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWK0-0003SG-E4; Thu, 11 Jun 2020 23:09:20 +0000
Received: from ale.deltatee.com ([204.191.154.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWJv-0003Rg-Hw
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 23:09:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+vs0C/x8fZ6Qvq4Ip5YKMPuZ++Vs0ocLislt6BL3la8=; b=WAloTPwMgU2upwFJKMUdRAUGZ8
 4p1/0GV9JlIs2ivHjKaAKUlHd3xcqGuZhAVchW59vWBfETKC6HIF7+pgmeIrTiXP8lYNq1Vjz8fmY
 tQ8f2Erm6ZDTed3rqvSYLjaeyb1U2wgygecbpCHiYCowQ8llVtUooB2fnApunbI40K3ctDtnmEzrt
 MF//xWp7RU0y0CEFC2Fv4zMYz7N/yNgYmLtFP0XoexQFch9pIM0kJefh0pYMdxZ3j+k0npaJezeHh
 L4Axj9xRiHwpm9og8P9U5VxBozbzMaB03rm1J+ctRwBU+H0PvGwdlGkdAycgYgU4Ux/llWHlEztWx
 +cmKHI7A==;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4]
 helo=[192.168.0.10])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1jjWJn-0001i8-KE; Thu, 11 Jun 2020 17:09:08 -0600
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200514172253.6445-1-logang@deltatee.com>
 <20200514172253.6445-3-logang@deltatee.com>
 <BYAPR04MB49658F968DC104E99B5C923286800@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <09f1de95-533e-6707-9c86-665f32eb53d7@deltatee.com>
Date: Thu, 11 Jun 2020 17:09:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB49658F968DC104E99B5C923286800@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com, axboe@fb.com,
 kbusch@kernel.org, sagi@grimberg.me, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaitanya.Kulkarni@wdc.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,URIBL_BLOCKED autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH v13 2/9] nvme: Create helper function to obtain command
 effects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_160915_594161_1AE8B258 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2020-06-11 4:56 p.m., Chaitanya Kulkarni wrote:
> On 5/14/20 10:23 AM, Logan Gunthorpe wrote:
>> Separate the code to obtain command effects from the code
>> to start a passthru request and open code nvme_known_admin_effects()
>> in the new helper.
>>
>> The new helper function will be necessary for nvmet passthru
>> code to determine if we need to change out of interrupt context
>> to handle the effects.
>>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
>> ---
>>   drivers/nvme/host/core.c | 39 ++++++++++++++++++++++-----------------
>>   1 file changed, 22 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index d22859543e4b..5062a83c3634 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -1317,22 +1317,8 @@ static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio)
>>   			metadata, meta_len, lower_32_bits(io.slba), NULL, 0);
>>   }
>>   
>> -static u32 nvme_known_admin_effects(u8 opcode)
>> -{
>> -	switch (opcode) {
>> -	case nvme_admin_format_nvm:
>> -		return NVME_CMD_EFFECTS_CSUPP | NVME_CMD_EFFECTS_LBCC |
>> -					NVME_CMD_EFFECTS_CSE_MASK;
>> -	case nvme_admin_sanitize_nvm:
>> -		return NVME_CMD_EFFECTS_CSE_MASK;
>> -	default:
>> -		break;
>> -	}
>> -	return 0;
>> -}
>> -
>> -static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
>> -								u8 opcode)
>> +static u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
>> +				u8 opcode)
>>   {
>>   	u32 effects = 0;
>>   
>> @@ -1348,7 +1334,26 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
>>   
>>   	if (ctrl->effects)
>>   		effects = le32_to_cpu(ctrl->effects->acs[opcode]);
>> -	effects |= nvme_known_admin_effects(opcode);
>> +
>> +	switch (opcode) {
>> +	case nvme_admin_format_nvm:
>> +		effects |= NVME_CMD_EFFECTS_CSUPP | NVME_CMD_EFFECTS_LBCC |
>> +			NVME_CMD_EFFECTS_CSE_MASK;
>> +		break;
>> +	case nvme_admin_sanitize_nvm:
>> +		effects |= NVME_CMD_EFFECTS_CSE_MASK;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +
>> +	return effects;
>> +}
>> +
>> +static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
>> +			       u8 opcode)
>> +{
>> +	u32 effects = nvme_command_effects(ctrl, ns, opcode);
>>   
>>   	/*
>>   	 * For simplicity, IO to all namespaces is quiesced even if the command
>>
> 
> Seems like you have changed the existing function body from
> returning from switch to returning at the end of the function along with
> the name that is why diff is large, which also adds an extra variable 
> named "effect".
> 
> How about following ? which keeps the diff small and removes the extra 
> variable and keeps the existing code as it.

That doesn't really get what's needed for the new helper. We need a new
helper that gets the effects as nvme_passthru_start() sees them
(including ctrl->effects->acs[opcode]). Changing the name of
nvme_known_admin_effects() is not equivalent.

This patch would be possible to do without open coding
nvme_known_admin_effects() in the new helper, but doing so helps to
clean things up a bit as nvme_known_admin_effects() isn't used anywhere
else.

Logan


> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 78fc38b8356f..f47013fdc5ee 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1326,7 +1326,8 @@ static int nvme_submit_io(struct nvme_ns *ns, 
> struct nvme_user_io __user *uio)
>                          metadata, meta_len, lower_32_bits(io.slba), 
> NULL, 0);
>   }
> 
> -static u32 nvme_known_admin_effects(u8 opcode)
> +static u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
> +                               u8 opcode)
>   {
>          switch (opcode) {
>          case nvme_admin_format_nvm:
> @@ -1343,7 +1344,7 @@ static u32 nvme_known_admin_effects(u8 opcode)
>   static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
>                                                                  u8 opcode)
>   {
> -       u32 effects = 0;
> +       u32 effects = nvme_command_effects(ctrl, ns, opcode);
> 
>          if (ns) {
>                  if (ctrl->effects)
> @@ -1357,7 +1358,6 @@ static u32 nvme_passthru_start(struct nvme_ctrl 
> *ctrl, struct nvme_ns *ns,
> 
>          if (ctrl->effects)
>                  effects = le32_to_cpu(ctrl->effects->acs[opcode]);
> -       effects |= nvme_known_admin_effects(opcode);
> 
>          /*
>           * For simplicity, IO to all namespaces is quiesced even if the 
> command
> 

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
