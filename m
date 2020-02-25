Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C982216EFFD
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Feb 2020 21:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O3CaZPwalNhy+P5eyCRbWpVqOKbA0BfcaMsSjKfjD7I=; b=VtsqHqiCjckA6k0DF1z+M8ztm
	xFTjBuHuIdAyNqMMjjE1kkZOVJG/UmHGMXtBlGm3ffGietHWo1fnm8Z80ta4ppC/hQ/91qccWeDgG
	xt0vll7lk5g83WRFEsgZDOPopuDld9KHmYR66fwCb4VZvsjI1xrSj4azLwX/AkGjUgjXnXWZMQZjP
	YcYsyrn/SVjzCNLW7vLQITbctzcpxhmFqh4dAVa89vGdG6LRMFH8BcWZVERwBLJu+qOFoad8+PGgp
	S1tJhmeTJtzKHS1YjAhXRcYDIPWqCKzoqizz9NSATeYbFilBSMv8rS6aOaSCnADJfHnDyQywRnG9I
	hkpkOpYig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6gki-0001wu-FJ; Tue, 25 Feb 2020 20:24:24 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6gke-0001wR-F0
 for linux-nvme@lists.infradead.org; Tue, 25 Feb 2020 20:24:21 +0000
Received: by mail-ot1-f67.google.com with SMTP id 77so765844oty.6
 for <linux-nvme@lists.infradead.org>; Tue, 25 Feb 2020 12:24:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g8wTdOE0AuLtpaUAGonyubsDqbGQFDTWNZ7MdHBRcIU=;
 b=hFup06a6Ol+D4vZG1uJueeWILKH7VFcagym7lKA0LqVYwHFemKTpGeMtUN6At9tn8X
 LNjRL0TtCfX0ya6SJDGIFHs1lOYiXbcv5s8DwzIEwTBWBdB/yCbgFLrshncJVfnQaXR4
 hRGofalFu2IgzSMJCeKFMYz4MIFIN2aygGmHnIRQa+yy3kmSdMqpnQdbLPZ9F5ehV4yo
 QJ15H9ZBYcUWglFX17LObyq61OxOtPbX0jYJB5qmuC3gA93spHTwfMGw7I1nyxeR9rgl
 kEKLyYMz5P75D3UTBWCaGU3Wee0WFA/T5+UppgcL/H8DoX0//bUDH+debWtMyzAtgYrt
 tk5Q==
X-Gm-Message-State: APjAAAWsL2n49/WNwerrdsu/Z+XVU7Pf0sS7fsTGbl9ZHEhWxN6RCWUn
 xdvk7zJN8wmSWwxn4TEpsx7Is7bE
X-Google-Smtp-Source: APXvYqzEnZHq5aysMBFxDkqbmnUC8hyuMTOl2rmaHmgkiY9MTdFSReYItQZx9hNfoddUaVuvntdxQw==
X-Received: by 2002:a9d:6544:: with SMTP id q4mr264217otl.269.1582662258801;
 Tue, 25 Feb 2020 12:24:18 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id l1sm5643085oic.22.2020.02.25.12.24.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 12:24:17 -0800 (PST)
Subject: Re: [PATCH] nvme: log additional message for controller status
To: Keith Busch <kbusch@kernel.org>, Rupesh Girase <rgirase@redhat.com>
References: <1582561924-8017-1-git-send-email-rgirase@redhat.com>
 <20200225155539.GA22008@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bd4091c1-5c07-d3b6-876e-cce7794cdfa7@grimberg.me>
Date: Tue, 25 Feb 2020 12:24:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225155539.GA22008@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_122420_500145_A53ECEE2 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> On Mon, Feb 24, 2020 at 10:02:04PM +0530, Rupesh Girase wrote:
>>   			dev_err(ctrl->device,
>> -				"Device not ready; aborting %s\n", enabled ?
>> -						"initialisation" : "reset");
>> +				"Device not ready; aborting %s, RDY=0x%x, CFS=0x%x\n",
>> +				enabled ? "initialisation" : "reset",
>> +				csts & NVME_CSTS_RDY, csts & NVME_CSTS_CFS);
> 
> The RDY bit is a bit redundant. If "initialisation", we know it's not 1,
> and if "reset", we know it's not 0. We also know it's not all 1's if we
> reach here.
> 
> CFS may be useful, but the print will look a strange. If CFS is set,
> you'll see "CFS=0x2", but the CFS field can only be either 0 or 1. I say
> just print out the entire csts field in case SHST or NSSRO may provide
> insights to the vendor.

Suggestions sound fine, looks reasonable either way.

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
