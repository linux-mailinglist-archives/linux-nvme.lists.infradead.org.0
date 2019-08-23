Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1EB9B492
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 18:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hTgQMgdMuWk5lok0+8p5orzaqzDLBlnZLEeipx7GyS4=; b=kiET+Uxmo0vq5DT/V73tvbFpN
	EMg9azOC7bzk0jKT8qPL60sVXPDWn5QVzkegYNGrAv81Jy+qwl1BCTeQf773xRpARTTBa/RKuLs0I
	jJ1PibrXIYkbLhYoqQykPZ2Vxlr4DfJnel4v98J22i2CK3Ea1XSf7ld9PIcS8xbtgJEeJm3JBE89x
	qQ+MW7T2AfsZOnPowcEtInaa9lyn6oX4NOUsEfPTB0kpUfSfHxlO7bosO6SK5AcIiIJbYMyQLi2sg
	u7er8cqusWv/eD6q47WGPFyVfs6eXeJdCU1zkciUjrZX7sHHoQphltHMAf+TENJNN/ACxE1XuUFPx
	s48EamsOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1CXf-0002VS-Uf; Fri, 23 Aug 2019 16:35:59 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1CXK-0002Js-EN
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 16:35:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id d85so6804823pfd.2
 for <linux-nvme@lists.infradead.org>; Fri, 23 Aug 2019 09:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=4Wwe96Ioj6TARswPfVChU7cGschM2yjs5kFIwqvLFos=;
 b=exzzyWGueqaT10CHMhDywx8kJSqLel6XWQpuz83sfKpNnaJmipyFgOfDXzn0wLEtD7
 v9eQHiAAc4/39DrPKOuxnf2XCzz9f3ifqVKuEdMxYb4JY4AG8GJCk99JZQmGrykzVQME
 06Gk29+SheMPdMlAmKEDHYsOxq3THt6cQPQzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4Wwe96Ioj6TARswPfVChU7cGschM2yjs5kFIwqvLFos=;
 b=tos31tB98APhBH9zTqAgMn4XambqHY7eYQDDsR2PulbXCU+cRDZ37dwK5RQDjON7Ef
 pB1/M9317raMuchEXpfQdjVMAu6K3/o+F1VP/XxCsWnW/zoWkJjtwoNxiuIFhI4d7Wg7
 7gbZahTgZDbDBM/JHgWyWlsUsZplJjyphDg/PapkTCxdCBEseoeNyrd3Gs6HHp/Z+4hP
 mkUFz8Bsqan0TpAyIUPdwwLLNTVjo2taXRMJnSSWXQxaOIg3xSZ5O/CWX0OvGkFAdAUo
 Vdaq4ipdSW40mRkKsYzaqkLNg6TkqpUilGQi0Pjxgs2UidLg9rOAtBKfCcA8XEXIpNUw
 ZAiQ==
X-Gm-Message-State: APjAAAXJ4tRLq/Zp5N5VwHgqm5MUNUnQKgUoKdnlWvU/utMjbh2bero0
 evSVJDj+EDDPON7cX37WCaKuVZAX640=
X-Google-Smtp-Source: APXvYqxfD9Flu+vAwN3XSdJAWFb8p8EABwgLhobfJkIAUgUayD420EDDiZs+G3Q8UCFcex9eLL66+A==
X-Received: by 2002:a17:90a:8c01:: with SMTP id
 a1mr5914797pjo.82.1566578138044; 
 Fri, 23 Aug 2019 09:35:38 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s67sm2574581pjb.8.2019.08.23.09.35.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 09:35:37 -0700 (PDT)
Subject: Re: [PATCH 3/3] systemd: fix echo call with absolute path
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>
References: <20190822220937.8021-1-sagi@grimberg.me>
 <20190822220937.8021-3-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <1b07fce7-91c4-c484-55f8-56fa37909ca7@broadcom.com>
Date: Fri, 23 Aug 2019 09:35:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822220937.8021-3-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_093538_486969_1506E1A9 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 8/22/2019 3:09 PM, Sagi Grimberg wrote:
> Without placing the absolute path when formatting the
> nvme connect-all args we can get the following error:
> --
> connect-all: unrecognized option '-e'
> Discover NVMeoF subsystems and connect to them  [  --transport=<LIST>, -t <LIST> ]    --- transport type
>    [  --traddr=<LIST>, -a <LIST> ]       --- transport address
>    [  --trsvcid=<LIST>, -s <LIST> ]      --- transport service id (e.g. IP
>                                              port)
>    [  --host-traddr=<LIST>, -w <LIST> ]  --- host traddr (e.g. FC WWN's)
>    [  --hostnqn=<LIST>, -q <LIST> ]      --- user-defined hostnqn (if default
>                                              not used)
>    [  --hostid=<LIST>, -I <LIST> ]       --- user-defined hostid (if default
>                                              not used)
>    [  --raw=<LIST>, -r <LIST> ]          --- raw output file
>    [  --device=<LIST>, -d <LIST> ]       --- use existing discovery controller
>                                              device
>    [  --keep-alive-tmo=<LIST>, -k <LIST> ] --- keep alive timeout period in
>                                              seconds
>    [  --reconnect-delay=<LIST>, -c <LIST> ] --- reconnect timeout period in
>                                              seconds
>    [  --ctrl-loss-tmo=<LIST>, -l <LIST> ] --- controller loss timeout period in
>                                              seconds
>    [  --hdr_digest, -g ]                 --- enable transport protocol header
>                                              digest (TCP transport)
>    [  --data_digest, -G ]                --- enable transport protocol data
>                                              digest (TCP transport)
>    [  --nr-io-queues=<LIST>, -i <LIST> ] --- number of io queues to use
>                                              (default is core count)
>    [  --nr-write-queues=<LIST>, -W <LIST> ] --- number of write queues to use
>                                              (default 0)
>    [  --nr-poll-queues=<LIST>, -P <LIST> ] --- number of poll queues to use
>                                              (default 0)
>    [  --queue-size=<LIST>, -Q <LIST> ]   --- number of io queue elements to
>                                              use (default 128)
>    [  --persistent, -p ]                 --- persistent discovery connection
>    [  --quiet, -Q ]                      --- suppress already connected errors
> Usage: nvme connect-all <device> [OPTIONS]
> Options:
> : nvmf-connect@--device\x3dnvme0\t--transport\x3dtcp\t--traddr\x3d192.168.123.1\t--trsvcid\x3d8009\t--host-traddr\x3dnone.service: Main process exited, code=exited, status=70/n/a
> : nvmf-connect@--device\x3dnvme0\t--transport\x3dtcp\t--traddr\x3d192.168.123.1\t--trsvcid\x3d8009\t--host-traddr\x3dnone.service: Failed with result 'exit-code'.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   nvmf-autoconnect/systemd/nvmf-connect@.service | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/nvmf-autoconnect/systemd/nvmf-connect@.service b/nvmf-autoconnect/systemd/nvmf-connect@.service
> index 25dca0efefd9..10fb3aafcf59 100644
> --- a/nvmf-autoconnect/systemd/nvmf-connect@.service
> +++ b/nvmf-autoconnect/systemd/nvmf-connect@.service
> @@ -11,4 +11,4 @@ Requires=nvmf-connect.target
>   [Service]
>   Type=simple
>   Environment="CONNECT_ARGS=%i"
> -ExecStart=/bin/sh -c "nvme connect-all --quiet `echo -e $CONNECT_ARGS`"
> +ExecStart=/bin/sh -c "nvme connect-all --quiet `/bin/echo -e $CONNECT_ARGS`"

Same comment as prior.

Reviewed-by: James Smart <james.smart@broadcom.com>

-- james

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
