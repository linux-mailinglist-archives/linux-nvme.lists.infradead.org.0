Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC65D194768
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Mar 2020 20:26:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ur0jwz/HOmADD1tLP6r1XMmRJBKdHXlYUphVIJfL8lo=; b=ignyrUu4ZASZ3Jj5t5olHb79w
	eXnt64ZFj1PRJWor/USboQBUTwGfxphZOgPpM/mje860ChUt/0zckaPGa9AnCW9hca7H2Ej4h9R5K
	ht++5+zkmqs0i7Ad9zR1G4fMokfnjN1x/zHbzO7TpIR13EQU7Qyf8tLWkrJw5ff+M8RAmn8Yj/Lo5
	hXwOYoOjH3UpYRg8qCJTqC6NIrj/aMkiqXDmo5fwbxMFRoH2KOLEP+mMF+eDLtt/u535/HPCWLl23
	zAIK/5jSClvDFlgrJN6qGYsXv5lwz5GE/2LxOZo1darNFofzA173ykCSLD0ccDbJvzhqQn/4cNjmn
	GS/h+ujlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHY96-0003yB-0f; Thu, 26 Mar 2020 19:26:28 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHY91-0003xo-3T
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 19:26:24 +0000
Received: by mail-pg1-f193.google.com with SMTP id x7so3407631pgh.5
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 12:26:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EXOiaAyRvSoEhHds/k8PvR8VHFhv0CdYrWtNRO2tmzI=;
 b=fGTvM8GliwLwC950rg6iZP0GW0DDvkh5IJrZPLvOKATjrkeuY2Wp1EKTnlPen5Evw1
 BOvcWMtSPWYxMHGEZCSWg37pSH5XwPRw0Knx7K3lY47XKCcAylnl/kOXzCnSEcrx2qKi
 bQwCLHAzqmXqnFLpd+O044aLh8PF0YbCgrvbRuMWQEn0mGxt/inHNvFJJuEXNxwbNvp2
 r2UpVS7wvmmiT1ps+h1gVe8GWaoOwF4jeccUYeMkHw3c+9ePRzBvr8LuKV6DJrfFCqM0
 m3Ii9oo4yh3hqeSTPPQRpkx88Hn3Hzns0XDq8UKH++bW2aol1WC01dhOlse8fAtwoZvE
 /ZKw==
X-Gm-Message-State: ANhLgQ1mE1x7D2jLMiz6C7Z8gP+WjGKTW5b4v/N4FTDfWxpOdT4mYK2w
 +nqiQf82leoQCeWERrDwqPQ=
X-Google-Smtp-Source: ADFU+vtOUg7LXdC0Fo/lJlmzIYZm4UAjSqJVyK7L05J5jQoG7ggQWFJJJHbzO97MSm3eEcw/RD0RJw==
X-Received: by 2002:a63:36cd:: with SMTP id
 d196mr10203681pga.280.1585250782009; 
 Thu, 26 Mar 2020 12:26:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:7c30:3845:645:967b?
 ([2601:647:4802:9070:7c30:3845:645:967b])
 by smtp.gmail.com with ESMTPSA id t186sm2211180pgd.43.2020.03.26.12.26.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 12:26:20 -0700 (PDT)
Subject: Re: nvmetcli: Unable to run clear/restore
To: tasleson@redhat.com, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
References: <7fdaeb65-0cad-8f9a-10e7-ae0c50494bf3@redhat.com>
 <9972a646-2618-5fcc-b18c-6765516f65a4@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d8ee99ad-8412-6c24-846a-ca889105c424@grimberg.me>
Date: Thu, 26 Mar 2020 12:26:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9972a646-2618-5fcc-b18c-6765516f65a4@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_122623_145118_4A86D6B3 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>> While experimenting with nvmetcli I'm unable to run clear or restore.
>>
>> Using master branch against Fedora 31, 5.5.9-200.fc31.x86_64
>>
>> # ./nvmetcli clear
>> Traceback (most recent call last):
>>    File "./nvmetcli", line 740, in <module>
>>      main()
>>    File "./nvmetcli", line 722, in main
>>      funcs[sys.argv[1]](savefile)
>>    File "./nvmetcli", line 689, in clear
>>      nvme.Root().clear_existing()
>>    File "/root/projects/nvmetcli/nvmet/nvme.py", line 315, in clear_existing
>>      p.delete()
>>    File "/root/projects/nvmetcli/nvmet/nvme.py", line 677, in delete
>>      a.delete()
>>    File "/root/projects/nvmetcli/nvmet/nvme.py", line 200, in delete
>>      os.rmdir(self.path)
>> PermissionError: [Errno 1] Operation not permitted:
>> '/sys/kernel/config/nvmet/ports/0/ana_groups/1'
> 
> Apparently if I simply do
> 
> # rmdir /sys/kernel/config/nvmet/ports/1
> 
> The port and associated ana group gets removed and the usage count for
> the kernel module nvmet goes to zero.
> 
> Is the bug that we are trying to remove
> /sys/kernel/config/nvmet/ports/0/ana_groups/1 in userspace from nvmetcli
> which can simply be corrected with
> 
> diff --git a/nvmet/nvme.py b/nvmet/nvme.py
> index 089bafb..a2565e4 100644
> --- a/nvmet/nvme.py
> +++ b/nvmet/nvme.py
> @@ -686,8 +686,6 @@ class Port(CFSNode):
>           self._check_self()
>           for s in self.subsystems:
>               self.remove_subsystem(s)
> -        for a in self.ana_groups:
> -            a.delete()
> 
> 
> or that we should be able to remove it and can't, thus the issue is in
> the kernel?

IIRC that this is an issue that Hannes was aiming to address?

Hannes?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
