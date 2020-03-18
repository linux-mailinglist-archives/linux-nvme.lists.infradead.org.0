Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6550718A0DE
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Mar 2020 17:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bfs7W+ptbZKu5DJTfAPPrFK3hmmQOE6lqGHIbkrnWyM=; b=I4NKljGO3rU162RYjBcum1/Oz
	0Z6aejMQouEZRsj8Frichq5DuP4YNEqOXOqcqMOqkdfrFwvi7VlZzetl6bXaQEHLY5GKkoIzFS7zB
	+KILxcIFk+irAr7CfrVn3LVzkLY4eH4AQByTuFOaqPGmuvS8uD6/gjuGFgthO3Sdlf1unTTwJOom3
	MVz0+vIfnlbSnF3s/G5+vwvsoOoDB5hPhJysE+HbKqL1URqsuYcEGWxc6Xw4yunNCXnXXUZhD4h5n
	xbvA4AWcSp4xyn2N/n/IYG8ooH7lKof7a04xzQVJMxIX1goqd37Ruc9KfFa4/yxBK86D7bJWGe/x+
	AbChlr0HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEbsa-0000Do-NT; Wed, 18 Mar 2020 16:49:16 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEbsV-0000D7-IN
 for linux-nvme@lists.infradead.org; Wed, 18 Mar 2020 16:49:13 +0000
Received: by mail-pf1-f193.google.com with SMTP id d25so6177844pfn.6
 for <linux-nvme@lists.infradead.org>; Wed, 18 Mar 2020 09:49:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/G3r/xeCxGZTAlVzP2ub1+8AEE5sUfY+MvfaFPM87ow=;
 b=JRVl6EBeyy+g2NmjJLc36vJ0xDSuRQGUsQCSwpBuUw4f8F9sj5QhdDiv1I5KVyIg3R
 wxYVfRajl2Lbbar4MdwgdTx2z6dbN31zchVwcsOeSaUJOz/+3Pz1sjVgcwnV+FoAgqyi
 cPA3h1/v8Yq4+bSZysihwBjVAjTKBTHUX3M2HM8bwtsdGcrWKmiD8ERfo/El2Eh85lZx
 zk54k2R4iZ2bw7YS0ACmBJvT1vwMULndzFVqlVBIsc/x+HCZ/EBWn9f/rRnEC1sEzAWa
 lj7fMJm/ROUvuIA5OHluWeWbRlPWwLbrpH7kpgbx3FXS89j+OW+ECEKTBnQ1+EdkRofr
 nHkw==
X-Gm-Message-State: ANhLgQ2LZ7gc365dPm3y0FCD/vkvQuwPo9iSIcKBPKDuMu+5x6BSdn+C
 2i8d5DFNINeDI4zFDw8GwNU=
X-Google-Smtp-Source: ADFU+vvwR+K0XSg40QhsT41OAeaL5MRi1vcoN72jKymd26IUNJ5jsDPS3mCfVQMpyI5Jogbg4ZHdrA==
X-Received: by 2002:a62:6244:: with SMTP id w65mr5291995pfb.89.1584550149943; 
 Wed, 18 Mar 2020 09:49:09 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:dc11:3a20:fec0:f648?
 ([2601:647:4802:9070:dc11:3a20:fec0:f648])
 by smtp.gmail.com with ESMTPSA id f8sm7070999pfd.57.2020.03.18.09.49.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Mar 2020 09:49:09 -0700 (PDT)
Subject: Re: broken CRCs at NVMeF target with SIW & NVMe/TCP transports
To: Krishnamraju Eraparaju <krishna2@chelsio.com>
References: <a8e7b61a-b238-2cc3-d3c8-743ad1f8c8ee@grimberg.me>
 <20200316162008.GA7001@chelsio.com> <20200317124533.GB12316@lst.de>
 <OFB2589549.AD31F8B8-ON0025852E.005A969A-0025852E.005A96A3@notes.na.collabserv.com>
 <70b13212-faa6-d634-8beb-55ba39891d7f@grimberg.me>
 <20200317191743.GA22065@chelsio.com>
 <38f79fb7-841a-9faa-e1f8-2de4b9f21118@grimberg.me>
 <20200317203152.GA14946@chelsio.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3f42f881-0309-b86a-4b70-af23c58960fc@grimberg.me>
Date: Wed, 18 Mar 2020 09:49:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200317203152.GA14946@chelsio.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_094911_606365_C5033F60 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-rdma@vger.kernel.org, Potnuri Bharat Teja <bharat@chelsio.com>,
 Nirranjan Kirubaharan <nirranjan@chelsio.com>, linux-nvme@lists.infradead.org,
 Bernard Metzler <BMT@zurich.ibm.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Thanks Krishna,
>>
>> I assume that this makes the issue go away?
>> --
>> diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
>> index 11e10fe1760f..cc93e1949b2c 100644
>> --- a/drivers/nvme/host/tcp.c
>> +++ b/drivers/nvme/host/tcp.c
>> @@ -889,7 +889,7 @@ static int nvme_tcp_try_send_data(struct
>> nvme_tcp_request *req)
>>                          flags |= MSG_MORE;
>>
>>                  /* can't zcopy slab pages */
>> -               if (unlikely(PageSlab(page))) {
>> +               if (unlikely(PageSlab(page)) || queue->data_digest) {
>>                          ret = sock_no_sendpage(queue->sock, page,
>> offset, len,
>>                                          flags);
>>                  } else {
>> --
> 
> Unfortunately, issue is still occuring with this patch also.
> 
> Looks like the integrity of the data buffer right after the CRC
> computation(data digest) is what causing this issue, despite the
> buffer being sent via sendpage or no_sendpage.

I assume this happens with iSCSI as well? There is nothing special
we are doing with respect to digest.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
