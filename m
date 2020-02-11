Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FF3159612
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Feb 2020 18:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m4uz3Rsaczyr3Dx+v9pJkrrmkWrFauzf95Xs0OWfThw=; b=HSSRj9FG1iAMtnW3DJemaL9JQ
	qPgU5AwSbc+E1OxkM1cccJ2NxWAW7SJvzrGID+gh3JyuhTiGE3h6U8wUuZdHpTm3hbAg6VEaTSzae
	IjnWvx102dyBv55P4VM3NTyqMkjGFEt6M39zXZ4FwbNH0mAruxqkcU8FwUEXnvy+3aZYGsLWvSzA8
	9kxK25JBbvjhR6d6M8qZkL/5ils9VdKU+nFs2UGSSCIowHHftrt/4oMDKAxnROXyUTdx7gtlrVYXt
	wMXnkT5r+RRVxHYX8Swnrt8deUiigpgFf0lscSoWdFp/W07u8nyKdTv9qR4mQx9Nle70n0k4rsCPs
	Mr++QyQAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZEm-0006dE-Dy; Tue, 11 Feb 2020 17:22:16 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZEi-0006cm-OU
 for linux-nvme@lists.infradead.org; Tue, 11 Feb 2020 17:22:14 +0000
Received: by mail-ot1-f67.google.com with SMTP id j16so161964otl.1
 for <linux-nvme@lists.infradead.org>; Tue, 11 Feb 2020 09:22:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VRlaJ81/jk7NuLSOUSUQyepydj6U2/6q+56D/4j6+pU=;
 b=bqwbBoZk5gw40aUDfVf/GCffhje42jfDVXIzeBmYn/9npM/61cgH8glWHVvI5BSFXF
 sZAzOIPs5SsBZ6sODQEII6NetJ+2ZKV+RNwihovKYX0yWsETehukcWILW5/6eJvsrLbN
 qf4Vnzb1Y9C73d5RxNXQwV6zRGuCfG4vh26WsB7+Z/FEj4ll7xFhif0LCwNF4rO1Whz3
 M7k41UuGarXXYCoyRbMaurJ9fo5LtxbKojeWBmJm9KTj5r9AI4/gJ/PQZPxlA4NTwWUj
 JuGhXu7kjy548wYaz2VkKnIVinY/+w4Sm3gcfO8Qq5JKJUbWCIJXokz9WTyBjvTpNPFE
 zWIA==
X-Gm-Message-State: APjAAAWNVMOUoIZ9pdeLzntrwMBU2zHHoUh0ebNqjL7TyHni9ouA2Nf1
 0Amfr19/fxxxb3zom5+zHJE=
X-Google-Smtp-Source: APXvYqxe6fFHtdRHWE7tXoDd6gBM639H40O4Bsaoip5oYjD2bxgOmMBHf8X5R5mtsnb8+Wi7f66Ddw==
X-Received: by 2002:a05:6830:10d7:: with SMTP id
 z23mr6067127oto.114.1581441729772; 
 Tue, 11 Feb 2020 09:22:09 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t21sm1377896otr.42.2020.02.11.09.22.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Feb 2020 09:22:09 -0800 (PST)
Subject: Re: [PATCH RESEND V2 1/2] nvmet: allow block device to use buffered
 I/O
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200205020120.22210-1-chaitanya.kulkarni@wdc.com>
 <20200205020120.22210-2-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7ce00b55-2e34-2784-5ff8-6b516e2adc85@grimberg.me>
Date: Tue, 11 Feb 2020 09:22:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205020120.22210-2-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_092212_794066_9F021A6E 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: MRuijter@onestopsystems.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2/4/20 6:01 PM, Chaitanya Kulkarni wrote:
> NVMeOF target already has a support to execute requests in the
> buffered I/O mode with file backend. This patch allows block devices to
> be used with file backend code so that buffered I/O parameter can be set
> for a block device backed namespace when newly introduce configfs
> parameter backeend. The new file defaults to the blockio user can switch
> between "blockio" and "fileio" strings to enable the file backend for
> the block device when buffered_io set to 1.
> 
> Following is the performance improvement when backend=fileio and
> buffered_io=1 :-
> 
> Device_path = /dev/nullb0, I/O type = randread.
> 
> With this patch and buffered I/O = 0:
>    read: IOPS=198k, BW=772MiB/s (809MB/s)(45.2GiB/60002msec)
>    read: IOPS=198k, BW=774MiB/s (811MB/s)(45.3GiB/60002msec)
>    read: IOPS=197k, BW=771MiB/s (808MB/s)(45.2GiB/60002msec)
> 
> With this patch and buffered I/O = 1:
>    read: IOPS=979k, BW=3825MiB/s (4010MB/s)(224GiB/60002msec)
>    read: IOPS=983k, BW=3841MiB/s (4028MB/s)(225GiB/60003msec)
>    read: IOPS=980k, BW=3828MiB/s (4014MB/s)(224GiB/60002msec)
> 

Chaitanya,

Can you explain the difference here? null_blk literally does not do
anything but complete the I/O, how does this patch improve so much?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
