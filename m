Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA9E86EA2
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RIP/2HjrM7DAZlYHyiw84rAHdDYulyizGD5Idh8WjMI=; b=Yf8ksMqG2uTtzxLd1hZFHhsE6
	h5VGusMgJoC8U9ytlIQUrwRo9PqOI/XA6mx93IqYYuYrCX6TzCHATPjeFC2idj/cWzB5LTF/hOmfw
	cKoJxmu5Mv7Zzyap+4SfilhYBsQcwQTU8Ca5Efbq8+R/e2st2NbHL60MiH3XleNaQKcHuzzmo4ktW
	yZEZvvNuaKlrc2azoMiIIRtJncpT0Xjjd7A+WFmtvjd17TFch5eQzfSaANuaFqLjcG0sq8JOyvu4F
	X8ai9c0Bbf0+GrsYcbejAdqqgJlSWN17hBoN7gqYSQGLUKwpuG/aWNrC65F4o2EY8nXC4jITUPUu1
	wmbnCb3lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvsID-0004Bu-Sv; Thu, 08 Aug 2019 23:58:01 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvsI9-0004An-Kh
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:57:58 +0000
Received: by mail-pf1-f196.google.com with SMTP id b13so44998054pfo.1
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:57:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0CGjr/yE31ABWo5ivg9XIKVtf2nzCWMXv3rPJAoc88g=;
 b=emBOvvdPKre1NAwlf8Zoz/JDlwRGAR4qxSPn25ECIvn2NjfGeB8ZIwwsvuXsqTGNZN
 jikmD07Vy56JdZDXxIIKeeBMuyrcwRbjhaXdWx5jbQ3iWXwnzD1SU8fPw585+JOT8yiC
 ao9RgH3823q4N9hyEdaN8kGl8s+NuGG/Kzitc/bftw3Leq/sfPvJ2JtgD4v9VCtoVVnN
 N9YhEIxKTAps2eY0MeXD+WMkcg4moWC1GsZqnGw7++j+20WQI1gNCejmkUcjSd0fdjnb
 gNBlKqzBCgM0Rpmi/+CC0P0vT39ucTUoRAHJ6FsaAbHlfIv5HL7EoxTU45Zr03zUYnEp
 RU/w==
X-Gm-Message-State: APjAAAUN60Li8Tz2YATWq8J6IepLM+q4q5RxqyqVhgdoYS2ftNg2edSH
 NLGrg6Dtq6yFl649+zLZ/jWDkq79
X-Google-Smtp-Source: APXvYqwtQoKaiDT0dcPcZAxYtgxs3Mjf1ymbXEw1FxpagJdRuWkaqZNwFo6XceXd6J5YBlCfK6aH6w==
X-Received: by 2002:a63:7b4d:: with SMTP id k13mr5373369pgn.182.1565308676226; 
 Thu, 08 Aug 2019 16:57:56 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o14sm188952469pfh.153.2019.08.08.16.57.54
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 16:57:55 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] nvme controller reset and namespace scan work race
 conditions
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <779b707b-5892-bf23-52d8-5c8affe524b6@acm.org>
 <32b4c64f-4565-5a1c-269e-9a9059570e99@grimberg.me>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <90120210-7740-d0c8-10cf-93e2c8977e99@acm.org>
Date: Thu, 8 Aug 2019 16:57:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <32b4c64f-4565-5a1c-269e-9a9059570e99@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_165757_678016_61AFED3A 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
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
 James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/8/19 4:33 PM, Sagi Grimberg wrote:
> 
>>> for j in `seq 50`; do for i in `seq 50`; do nvme reset /dev/nvme0; 
>>> done ; nvme disconnect-all; nvme connect-all; done
>>
>> Has anyone already volunteered to convert this into a patch for the 
>> blktests project?
> 
> I'll see if it can reliably reproduce it for loop. Or perhaps I can
> run this with tcp on 127.0.0.1?

There are more tests in blktests that use loopback over a local network 
interface, e.g. the SRP tests. You may want to have a look at 
get_ipv4_addr(), get_ipv6_addr() and other functions in 
common/multipath-over-rdma.

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
