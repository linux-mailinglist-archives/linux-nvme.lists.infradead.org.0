Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FE551F46
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 01:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XNa398Lt8D/eN9PZkkqh31CPRIjwWrHREMKuf4Mn06M=; b=pplSoacM1AyyM/ZSv2fHhsDbe
	TDdCNmUr1tJ3mCXBWrylZ3C7M5x0h1uCa52Myp4IR/gfaqwAJvB/6B+Z42h7TC2WELRGsRbYiToMY
	m2vfVups2gvcVvd5eqVFC+l98/acDp4CuzvkHPfxe7E6XORl/9NHLtSepI2dTKdjAPNZOU5ihxqW+
	h/mPEMX/g7GnST/ALWC5vKa7zx5FJGoMoeBKeLuW8bbVX+1/j+1TNdKMpE/olYgflOU0hKh+3gvqR
	wUnW1m/CfTzQSU26Dj1SUzae3sEfE1CppGk2O4fEDugZXwCiqqREaWRRWiJViYKLY1r30YLSBmCxK
	mDBR4Zh/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYkX-0007tR-Qf; Mon, 24 Jun 2019 23:51:49 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYkS-0007sr-6D
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 23:51:45 +0000
Received: by mail-pf1-f195.google.com with SMTP id r7so8409258pfl.3
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 16:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qxDuwXEThMg2WkwoIL/dzcR2t9gaI98nDz2R40M2WcY=;
 b=cbaqLX+iFRPkRvyGGt0CPqiHB77yRuYPBCtakpY3/Z0+spuwGgXlrplGdZu1SaTS3c
 m9n5+5JGc8Gw5n6qcf8gmu1XKTpuGIZJ+O477DaAOrDBMxN69suWrMzvZ0Aa4bO5emHR
 xyLuMCd4JWt2QUCn++lEDA8skq0HrDc2KT3UAzPsWXszmWHi5+O8Zx0x+uerMqJwzaKT
 HWDktJz7R9pPBd0N/wfbrwxepdt/03z0d8YuqRC1X3oIG0BrYv0riBnmpMsD+KlvccLf
 vcJUVzVmmvja5ytzq4i92rW83TxBLUMocummlt0yhQ2M5G7iwiVOvgB1GxAYD0xaLtWO
 fvsQ==
X-Gm-Message-State: APjAAAUj4dGod3vVvVp462WilP3XNcLVru7axMWqKtpDnTw54tcaqL96
 xlZCYIiPYSgnjpXmHAH7DWY=
X-Google-Smtp-Source: APXvYqyhMD5o+i1LjaK6oVlsI/0EgZanh0eB8QKiQdztpSYkWfhXtyeNelE5ypFxMxPl91s5CCti1A==
X-Received: by 2002:a17:90a:a008:: with SMTP id
 q8mr28240183pjp.114.1561420302260; 
 Mon, 24 Jun 2019 16:51:42 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id h1sm14902482pfo.152.2019.06.24.16.51.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 16:51:41 -0700 (PDT)
Subject: Re: [PATCH v3 2/3] nvmet: Export NVMe namespace attributes
To: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20190617161222.253849-1-bvanassche@acm.org>
 <20190617161222.253849-3-bvanassche@acm.org> <yq1a7eeusa5.fsf@oracle.com>
 <68786de5-cdd8-c6d8-98a7-8a4310dac789@acm.org> <yq1blyrpupw.fsf@oracle.com>
 <7e51e415-16af-2fc5-42e9-ebd0e6f94c0e@acm.org> <yq136jyo927.fsf@oracle.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <062c6877-62e3-a37b-d2b2-ea35aadae912@acm.org>
Date: Mon, 24 Jun 2019 16:51:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <yq136jyo927.fsf@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_165144_228225_6C8E0F42 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/24/19 4:30 PM, Martin K. Petersen wrote:
> 
> Hi Bart,
> 
>> As you must have noticed the patch at the start of this thread touches
>> both the bdev and the file backends. So I'm not sure what your
>> question is about?
> 
> I was contemplating what the observed I/O atomicity would be for the
> initiator side when the target file backend is using buffered I/O.

Hi Martin,

My understanding is that after a completion has been reported for an 
atomic NVMe write that the written data must survive a power cycle. As 
you probably know all single logical block NVMe writes are atomic since 
the AWUPF field is 0's based. So I don't think that it is possible to 
implement a backend that uses buffered I/O in such a way that the 
backend is NVMe compliant without using an uninterruptible power supply.

Bart.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
