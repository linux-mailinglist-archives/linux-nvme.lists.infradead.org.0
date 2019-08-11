Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A2988FD0
	for <lists+linux-nvme@lfdr.de>; Sun, 11 Aug 2019 07:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=omMmI+fIumiM3qJKnUSsvn0EXtttl27PeUZZuIh5Tpk=; b=sjN8CQ9q2ylLeUtFEglLI7mXZ
	S8wUnFyahhqfHAAyyOn4OjAC/s3+nZ1IkxVWoMPDuOvUgaHwR4oFgB7msn6j9Lyaqug+sTm7QaaJH
	4T1J+JENPm5dosvyDM8rIsg4Geg2+J+n489puxHpvZjoUezay1gbiJMzG6lLllYtuV0ywL4F3XlsH
	9JMhLucRv0wFPF6BcQ4uoTN5+bjRxPKQFT1hBwysdnMVa5xq0ZwZGaZU4gYn2iFXFYVASdAn9ZQie
	1Ww+h8AowfdTovPL4PGSHGcUZrcbBKn6g/NfvE2iLd14mOpVOTNpAJRjCvDWh7xhWHHJ+xSMmcleF
	VcRzO7v2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwgBq-0005zT-M6; Sun, 11 Aug 2019 05:14:46 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwgBk-0005z2-Ms
 for linux-nvme@lists.infradead.org; Sun, 11 Aug 2019 05:14:42 +0000
Received: by mail-pg1-f194.google.com with SMTP id n9so41656164pgc.1
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 22:14:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=32xcfcPJFkGlvpOeeze+twOgjp7NXlAO+9dpMv6yT/Y=;
 b=mwyse1f1gj1gZYFQX/kW0bCoaiSFL85CfHkEMKG2ariwMaCIUfvKDvxShNLvM4rH3k
 hgstrlv6Sl4pwes5sBiNz3pvtl9OOXPFJO7N5dCuU8y+xBwxMTT8/wsCazQVtbhl5Mqw
 iCLozNJgbkOhBTu1+GjJrqa6RxRHv43klg+iHwB+dL1CLWHIr49pZIrmAEGlaN4IxyUu
 hWqzZAK/JbUmbsu+27MqMmRJDOntsuM3uhmA0KB4mHB9UCzS0kPI72Vd/hpcoR13IePM
 Q/2MFGNWMk/1ILsGDyZGIqD0+wll3cJAZ1JXjytqchG4AvbYMsDFlUtGXiNEMFGMdP/7
 Z/pA==
X-Gm-Message-State: APjAAAWb6bDMYIqk97t2YQGkOjeYOBg571PilZu+68J6d0TNURyGOgFU
 H6ZkgK5txgLGZMT4fA69LCg=
X-Google-Smtp-Source: APXvYqy+8CIM5zBQCluqLJFKQMRu/dhhECn2NSNxvopjZZOeAhePCgpq+FsCyh4pKdfCNTkZF3f2rg==
X-Received: by 2002:a62:107:: with SMTP id 7mr30249995pfb.4.1565500476157;
 Sat, 10 Aug 2019 22:14:36 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:a183:2905:6842:b7c?
 ([2601:647:4800:973f:a183:2905:6842:b7c])
 by smtp.gmail.com with ESMTPSA id 65sm110003794pgf.30.2019.08.10.22.14.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 10 Aug 2019 22:14:35 -0700 (PDT)
Subject: Re: [PATCH v5 2/7] nvme: return a proper status for sync commands
 failure
To: Keith Busch <keith.busch@gmail.com>
References: <20190809221211.21157-1-sagi@grimberg.me>
 <20190809221211.21157-3-sagi@grimberg.me>
 <CAOSXXT607=1L5TywNgpi242kcKP-P64Bz4atUgQ6iT=B41HV1A@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2321fe18-91e5-dd7d-d231-d64b4dc1afb2@grimberg.me>
Date: Sat, 10 Aug 2019 22:14:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAOSXXT607=1L5TywNgpi242kcKP-P64Bz4atUgQ6iT=B41HV1A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_221440_751118_6037C12E 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -805,7 +805,7 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
>>          if (nvme_req(req)->flags & NVME_REQ_CANCELLED)
>>                  ret = -EINTR;
>>          else
>> -               ret = nvme_req(req)->status;
>> +               ret = nvme_error_status(req);
>>    out:
>>          blk_mq_free_request(req);
>>          return ret;
>> @@ -896,7 +896,7 @@ static int nvme_submit_user_cmd(struct request_queue *q,
>>          if (nvme_req(req)->flags & NVME_REQ_CANCELLED)
>>                  ret = -EINTR;
>>          else
>> -               ret = nvme_req(req)->status;
>> +               ret = nvme_error_status(req);
>>          if (result)
>>                  *result = le32_to_cpu(nvme_req(req)->result.u32);
>>          if (meta && !ret && !write) {
>> --
> 
> Fine for the driver initiated commands, but no for user commands.
> Tooling definitely wants to see the NVMe status directly, and we'll
> break them all if we change this API.

OK, I can leave that one alone...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
