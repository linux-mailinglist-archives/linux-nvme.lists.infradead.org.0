Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B05618FDDF
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 20:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AHrwqZumyy1FoYC6PXI8OBYlOLWnt/AOEHwoSbjICwU=; b=RzbA71UoM+vZg3Ljyz4/vMduW
	RO7WE9c+pcCJvSt7AqeWztJyFCmBRpVMsKestMrGhjybMomFkbliOpV8BxEMeMyxBg95b+ILZDbdS
	S7s8FbZDt1OSdcNkHs+HtVsqwpu4MrZrXh1jHvEfTVBXv/kCaAw3QIc4560MVqmZIg+khrl4vcdIF
	3MXyblKK01GkK2YLclzVn8CQbDeAsHa/ieWhlSN2IzDabPtwglrVOWHVTHBC8oMeOfkvbiHfsdyaY
	lW44qnLrElKNeLM0UWrQxPjsXRBzLmepjSXm8j9b8Lj9rD5Mo5YUfo02mXgF2H4Ii6mJ9xVSIEPhh
	n8Rl5TLgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSy6-0005Ec-Eg; Mon, 23 Mar 2020 19:42:38 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSxz-0005EI-Cc
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 19:42:32 +0000
Received: by mail-wr1-f65.google.com with SMTP id h15so6427357wrx.9
 for <linux-nvme@lists.infradead.org>; Mon, 23 Mar 2020 12:42:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NnzEzCELF9CFBoAsqD11P71YH0fbfHRcDu4mVureYd8=;
 b=Rk+kVKXUSSlOgrk97Q8wc3xPDC+G8YafSPOD3MaHCGUa9/KnJ8qbjyJkElQd/GOxn4
 pEvZi+LHxNRPCQeO7NlCrBI78YChKRov9iVbNd4mXsI2rvc0fxpFbnFW7mfiTH9MmaDE
 xwTIJxZ7S0sgCp+XLJMKDWvV+EDynGVLszz0bNQB2+a9+/evVS5SxjbnOf1XdhUvqcE8
 HZHONcbMHWp2ptnmOXttYoK8d8YKnn677x++Zuykig/8ogsIsA8/eRl2rJh0kHz0NT/3
 waA24u8nLWFUNAKtXDXDgyiLn91NeB/iNti5Nw3gbCSs5ugschRs55pwnC6Jq4khhLNQ
 wUuw==
X-Gm-Message-State: ANhLgQ3HWIYpSmOnR9F9i3RLp4HIptbyLmMPHylPGLAMhHdknht6HYYJ
 rtqqol+iuzkcDMsGXnX15r5C1yRj
X-Google-Smtp-Source: ADFU+vsPaHN0KHbZkMKOfdvO0IPy4BSVxKZCMsG7aJWXYiWuFDG9q4AD5YjOgAGh9s/dJz4ezNBH5w==
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr31903376wrw.52.1584992549602; 
 Mon, 23 Mar 2020 12:42:29 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:4c50:a06:3358:69f8?
 ([2601:647:4802:9070:4c50:a06:3358:69f8])
 by smtp.gmail.com with ESMTPSA id t16sm22117934wra.17.2020.03.23.12.42.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 12:42:29 -0700 (PDT)
Subject: Re: nvmet: Kernel oops when doing mkfs on nvme-tcp device
To: tasleson@redhat.com, linux-nvme@lists.infradead.org
References: <17c25d8d-0dc2-9dc8-2b65-954034c23646@redhat.com>
 <507887d2-96dd-b0ee-bb05-519039d98359@grimberg.me>
 <f18d9173-b94e-69d6-022a-20603e8cb42b@grimberg.me>
 <7b56c65b-40a3-0172-6e42-7158fd88361c@redhat.com>
 <BYAPR04MB4965E360B649BF0EB0D1BAA586F20@BYAPR04MB4965.namprd04.prod.outlook.com>
 <52a296da-839d-a8a8-fe77-720faeb37aab@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d09a86be-01eb-1665-d596-886beedf53b4@grimberg.me>
Date: Mon, 23 Mar 2020 12:42:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <52a296da-839d-a8a8-fe77-720faeb37aab@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_124231_428516_D4F811CA 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
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


>> nvmet does support file backend, please have a look at blktests [1]
>> under the test 025 in {BLKTEST_HOME}/tests/nvme about how to setup
>> target with file backend.
> 
> I created a sparse file and used nvmetcli to change device to the
> specified file.  I connected the client, ran dd and that worked fine.  I
> tried using mkfs.ext4 and I got the same kernel oops.  Apparently it
> doesn't matter if I use a file or device as the backing store for this
> issue.

Interesting, did you see the write_zeroes error though?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
