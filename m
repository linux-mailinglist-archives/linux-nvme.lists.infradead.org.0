Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D89FFFFB
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 20:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bRBZl+daEsoafUufhonjgmN7Sj4IbVBkXaPXGTK87+0=; b=UYOmi0VvZRzN8nIsvDEkJiCeU
	HlJPfREyBAAbTibSulZgUEPloF+yuZ9HtafkbiVy5qyFlZDEh9Hd3mBnIodlUjp6Y8CM5DLOPj6qr
	rx5EQ/Yuo1k/YnPQMmm5v8RLStxgG3oamJOLgvJYkeFKfegCKsrQ7liO6SzpZ8ytQ55oZ/IreuXTX
	6bT0g2Mtbg8GFEUARk9Ftu4RZjW+c7oCUidJt8zeu/7dLMHPNQjYsUiPNHeWcQ6a+/qI9X5Z5F93m
	evDvzV+k8EBtI6liHoPL+8MTQnSV5s3PZ2uPDEF0InXDOXlUYDbIWQVXsvgpT2yHUsYqMioDynbTC
	QFzu5oDgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLXvK-0005C0-P7; Tue, 30 Apr 2019 18:56:14 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLXvG-0005Bf-4F
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 18:56:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 11:56:09 -0700
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="138798872"
Received: from unknown (HELO [10.232.112.165]) ([10.232.112.165])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES128-SHA;
 30 Apr 2019 11:56:08 -0700
Subject: Re: [nvme-cli 2/9] tests/nvme_writeuncor_test.py: check if write
 uncorrectable is supported
To: Hannes Reinecke <hare@suse.de>, Keith Busch <keith.busch@intel.com>
References: <20190430060554.24368-1-hare@suse.de>
 <20190430060554.24368-3-hare@suse.de>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <45c91e1f-004b-aa4e-69fe-82949eed166e@intel.com>
Date: Tue, 30 Apr 2019 12:56:08 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430060554.24368-3-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_115610_186133_D9DAEE53 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 4/30/2019 12:05 AM, Hannes Reinecke wrote:
> Before testing the WRITE UNCORRECTABLE command we should be testing the
> ONCS value of the IDENTIFY CONTROLLER command to figure out if
> the command is supported.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>   tests/nvme_test.py            | 24 ++++++++++++++++++++++++
>   tests/nvme_writeuncor_test.py | 11 ++++++-----
>   2 files changed, 30 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/nvme_test.py b/tests/nvme_test.py
> index 1c17ba1..7db277f 100644
> --- a/tests/nvme_test.py
> +++ b/tests/nvme_test.py
> @@ -276,6 +276,30 @@ class TestNVMe(object):
>           return int(oncs, 16) & 8
>   
>       @tools.nottest
> +    def get_oncs_write_uncorr(self):
> +        """ Wrapper for extracting write uncorrectable command support.
> +            - Args:
> +                - None
> +            - Returns:
> +                - true if supported.
> +        """
> +        pattern = re.compile("^oncs[ ]+: [0-9]", re.IGNORECASE)
> +        oncs = 0
> +        get_ctrl_id = "nvme id-ctrl " + self.ctrl
> +        proc = subprocess.Popen(get_ctrl_id,
> +                                shell=True,
> +                                stdout=subprocess.PIPE)
> +        err = proc.wait()
> +        assert_equal(err, 0, "ERROR : reading oncs value failed")
> +
> +        for line in proc.stdout:
> +            if pattern.match(line):
> +                oncs = line.split(":")[1].strip()
> +                break
> +
> +        return int(oncs, 16) & 2
> +
> +    @tools.nottest
>       def delete_all_ns(self):
>           """ Wrapper for deleting all the namespaces.
>               - Args:
> diff --git a/tests/nvme_writeuncor_test.py b/tests/nvme_writeuncor_test.py
> index 9f96f63..e4dc7b4 100644
> --- a/tests/nvme_writeuncor_test.py
> +++ b/tests/nvme_writeuncor_test.py
> @@ -69,8 +69,9 @@ class TestNVMeUncor(TestNVMeIO):
>   
>       def test_write_uncor(self):
>           """ Testcase main """
> -        assert_equal(self.nvme_read(), 0)
> -        assert_equal(self.write_uncor(), 0)
> -        assert_not_equal(self.nvme_read(), 0)
> -        assert_equal(self.nvme_write(), 0)
> -        assert_equal(self.nvme_read(), 0)
> +        if self.get_oncs_write_uncorr() == 1:

I think this needs to be '== 0x2' or change the get_oncs_write_uncorr
function to shift the bit down, or check for a True condition

> +            assert_equal(self.nvme_read(), 0)
> +            assert_equal(self.write_uncor(), 0)
> +            assert_not_equal(self.nvme_read(), 0)
> +            assert_equal(self.nvme_write(), 0)
> +            assert_equal(self.nvme_read(), 0)
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
