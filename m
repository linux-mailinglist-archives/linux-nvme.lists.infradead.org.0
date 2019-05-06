Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C911D151BF
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wKbLkFlXzjizIT1NgzEwTLAQb9YFU/wU1/LUP6Nfj4g=; b=XcevE1TVUMFy7U7RKfqJXkPxR
	25A5fHLezKwrFL/61jE+0GZFZtp1E3sRgF5Bac/R5c88BVPwb1K+KL9WDbdHZffJ2Cq5ppwEroed+
	C+EMS+3py+Gyevj8yS29cbiU3u5HDvCES9ozc90tVLMOtk+diO8827YK1R96r5If7fBAf0zYPgs3h
	wi6V1fVvWgS9fi/J2reEkc3Dlk+Jx+LsbQxgi8WATUrbOEidQzwKneex3MmCiiZo8t9w9vUQ/43O4
	6xlMFOUGleEPa67W1aO+/vAWq1OA7WITA+UIM9eW3BUgeR2rnQyb3+zzss+Q1S+L1agYR5UZ/FRSn
	HMuWHKLKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgam-00041r-MW; Mon, 06 May 2019 16:35:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgai-00041E-5p
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:35:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id d31so6716189pgl.7
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 09:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rgXUCPsPbhjMEKLSCnQ985WLzwdkjC//DmL86HjavvA=;
 b=CERK3w5+V8uN84Quyu9GyBa+4Y5B7SndnFyR4VZ+LDIlOubuu1kWXOO8xXHYgmgWS6
 NreNabDtAlkQWb7UZsqL2hlOTGHay51/dzp2CjTJqdPbP3gWInamXjXJefuN45YVHoEG
 s/T3gLowWXupsHUUQV87zWC3V23y6C3N3hiMd/Bcd1qf39K45GPRMz5o4RfUaUpxMFzY
 27HgYntUHOiiU/QWR1mPjYYgzMkXMNJqb4b+47HmDnBxOzSWu+JY+qQiv0QsEQ6AiwW+
 l2GGEekVtKylBHVL/QB5AgZG/WejPB8UdPzCnYQFICTN2oneUwCwprnluJNDl3MrODB8
 MQ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rgXUCPsPbhjMEKLSCnQ985WLzwdkjC//DmL86HjavvA=;
 b=V1tPvMZuIJcvprV4sBa+iSOwlVjPW0/6MI29tcRH3sE3SAq3g60ZVlJwk5K+Rv5apN
 kIIqui2EVz3yM/EUcEib8du8/G2G2X4x/ehXaBo2+cucpAkkZ9lcfV4P2lsdiqaTlxBc
 hGPTLjulYbcXYmeujabVhV8DZG1T72M9NOyicukQuEVDhtXGEq1wbiJfOlmk5HlKkuni
 IOqPQi9A42k0AIv6cWO+9HE/WRKDj8l/BsCQ6PSaQ13850nAwLZeIDq9j/Nspa3YE4k0
 0IIVha3lOsIwfwSy+B3TKOorFDiQkiPCERMjh0+LdskX0GnKItwb3PoS0YSS/lTpvpTE
 7eRg==
X-Gm-Message-State: APjAAAWxSWdEDs6RtIFiD7lYTMPNWhj6qzPLA7ifg/qkY9BSA5kLi7ef
 4wt69OTIAJNrHhrMK8DBDdY=
X-Google-Smtp-Source: APXvYqzXnHRwPs7X3R8uctkeFfqSgEiUkyrr8RhJrZbQeBZ66RmODd52T0U+I+ZJhtanfqj1dYUi7w==
X-Received: by 2002:aa7:810e:: with SMTP id b14mr35360340pfi.112.1557160547577; 
 Mon, 06 May 2019 09:35:47 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 14sm15330718pfx.13.2019.05.06.09.35.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 09:35:46 -0700 (PDT)
Subject: Re: [PATCH] nvme-trace: Add fabrics command opcode name
To: Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <20190505152201.23830-1-minwoo.im.dev@gmail.com>
 <SN6PR04MB45270E164CBC599246428CE386300@SN6PR04MB4527.namprd04.prod.outlook.com>
 <20190506163114.GA9468@lst.de>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <c19254ec-3734-23db-d46d-d7b91c3f3253@gmail.com>
Date: Tue, 7 May 2019 01:35:43 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506163114.GA9468@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093548_214000_51207F92 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/7/19 1:31 AM, Christoph Hellwig wrote:
> On Mon, May 06, 2019 at 04:29:12PM +0000, Chaitanya Kulkarni wrote:
>> Please do not mix admin and fabric commands.
> 
> Well, "the" fabrics command is an opcode that can show up on
> admin or I/O queues.  "the" because it actually is a multiplexer,
> and we probably want to decode it instead of just saying fabrics
> command in the traces.
> 

I'll prepare V2 patch with decoding opcode to show which fabrics 
commands are going on in the trace.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
