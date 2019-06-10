Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587153B1CE
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 11:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZK+169TSBstwhbXnVOSqvtx2YL2UG15FWZYEiIx9MVQ=; b=uHDN3gdO4z2oqt
	877BJMxVhPc3D2/wvW1T7UXpp/1m+I3HcY9FYVvKSh9OB772l033hXWzXaSpD5QmWtWGSRESAvOFR
	NuMJchGwWXLTcTLQo+w2P75IN+4Rkv3mAY4uYlQvN7RgQS/yN61Z0P+qrLFU+jLSka7ItKEoTI9YE
	JV1yaQ5zg7PUu8Q7cnmCAuuJWVnvFuBDCspNFUufj+/3u08AncMOC75rFUGF2/UpleyMu2VzES/dL
	Pi3bumAnqxO7MwtTuKlkiF1oz24KNs5eyt7IJmwJCSOZCrBux+qBmUNJarJtAJ724r+N7xfjTn2Pj
	hM/tONeYXz8+JtM0IgSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGRV-0001j4-Eb; Mon, 10 Jun 2019 09:18:17 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGRE-0001iO-Bo
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 09:18:01 +0000
Received: by mail-pg1-x542.google.com with SMTP id 83so4701307pgg.8
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 02:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=b+UTkoMDg/tvoNg4jLHhuwrl7bHxYSnEiQv7kgEoEVk=;
 b=mTO4JM7U0yg4YA+fl/Hh8o6Bq2IsBz6rf6GC2G3n3G3qm/QV/VtSiQ7oWTpawgW376
 1cnx+MD7OkUrVMNZPTdZQ4C8IWW+weo/GeK9bPJeYhqYXjvM3o7bMLwpOlmflsEmEHZX
 M9ukQc5LIHvSIc8Dn7MZORGbgrSZVnjX4/TM5E8T4YU9sR6lP6zprxTuMm7pXyOQCGV1
 xRs2BNMrNXwB7/8ryobtMsIgiWqUgbZe87cyI/+wjAKoWG9xOITazULQTdDQXhWgofoE
 dvFf7EPii2l5MFq+ewLtPQ5kbIYQj8L2bo2gMKJC0u88ST8fXDNnI6K4eV0Bjs89Ce0d
 B7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b+UTkoMDg/tvoNg4jLHhuwrl7bHxYSnEiQv7kgEoEVk=;
 b=P4G6rAqMUYJbz0GbenJ+c9HQanXkWmFRAUOqD4mpyXO6t0XE1O9VE3CvAhkWTn3FVF
 /laI7et2SkcvHqHiMx0K6RRNGRJQlueFmRbScyuGeuBLAk8GDa+0NA4wAouekdXXVM4a
 ZNEyz2foh3KMJfsjtMLve+IPLVSqFdlnH7MGtoqfgLOWnNLpBMcsHGp2qptP+AV2SjS1
 4/SwxXbdCYiPKvxnqPx+zt63laOmiLJcrhDoRWOkRWfbqAjBdDCAqI0KUnFvmoI7vM5s
 OFT/uxP1BAy45q2KnkJDjeODC1LrMY486d2fgY7p+v4vBlxvG1cD7EiJlFYIT2KIroDk
 r68w==
X-Gm-Message-State: APjAAAX+RIgSk5yr/Rvtb6X5MQcvGa0mawqEKmD9ojPkw83rvj5V1H4n
 bVVjvOe2LNaTN6WNjCZ6s78=
X-Google-Smtp-Source: APXvYqxxduensRgm2PvFPOMvFOMwZqZnu2vJNqh2i6Zi2Z9b4vJIvnNM+axmyG9akf+UhyMTO5ucbw==
X-Received: by 2002:aa7:8555:: with SMTP id y21mr16709268pfn.104.1560158278989; 
 Mon, 10 Jun 2019 02:17:58 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id o6sm10157424pfo.164.2019.06.10.02.17.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 02:17:57 -0700 (PDT)
Date: Mon, 10 Jun 2019 18:17:55 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Sagi Grimberg <sagi.grimberg.me@minwooim-desktop>
Subject: Re: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error
 status
Message-ID: <20190610091755.GA1879@minwooim-desktop>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-7-minwoo.im.dev@gmail.com>
 <BYAPR04MB57497DFEEC77ED6D43998ED086110@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190608200112.GC28228@minwoo-900X5N>
 <BYAPR04MB57495E9DBF68A2BF2FA076C686110@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB57495E9DBF68A2BF2FA076C686110@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_021800_408504_19DAD145 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-08 20:13:00, Chaitanya Kulkarni wrote:
> (+ CC: Sagi).
> 
> I'm fine if Sagi is okay with this.

Sagi,

Could you please have a look into this seriesfor the fabrics changes?

Thanks,

> 
> On 06/08/2019 01:01 PM, Minwoo Im wrote:
> > On 19-06-08 19:36:42, Chaitanya Kulkarni wrote:
> >>> @@ -874,9 +877,11 @@ static int do_discover(char *argstr, bool connect)
> >>>    	case DISC_GET_NUMRECS:
> >>>    		fprintf(stderr,
> >>>    			"Get number of discovery log entries failed.\n");
> >>> +		ret = status;
> >>>    		break;
> >>>    	case DISC_GET_LOG:
> >>>    		fprintf(stderr, "Get discovery log entries failed.\n");
> >>> +		ret = status;
> >>>    		break;
> >>>    	case DISC_NO_LOG:
> >>>    		fprintf(stdout, "No discovery log entries to fetch.\n");
> >>> @@ -885,6 +890,7 @@ static int do_discover(char *argstr, bool connect)
> >>>    	case DISC_NOT_EQUAL:
> >>>    		fprintf(stderr,
> >>>    		"Numrec values of last two get discovery log page not equal\n");
> >>> +		ret = DISC_OK;
> >> Can you please explain above assignment ?
> >
> > Even it fails due to a mismatch between numrec in the header and the
> > actual nr_entries, the discovery log-page has been done successfully
> > whose status code should be in zero.
> >
> > That code is just returning 0 to the caller which does not need to fail
> > due to this reason.  You may ask me why I didn't do like:
> > 	ret = 0;
> >
> > That is just following the code right above which is a case for
> > DISC_NO_LOG.
> >
> > What do you think about it ?
> >
> > Thanks!
> >
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
